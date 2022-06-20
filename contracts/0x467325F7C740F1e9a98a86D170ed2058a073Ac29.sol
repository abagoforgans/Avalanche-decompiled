contract main {




// =====================  Runtime code  =====================


#
#  - propose(address[] arg1, uint256[] arg2, string[] arg3, bytes[] arg4, string arg5)
#
const name = 'TokensFarmCongress', 0


address membersRegistryAddress;
array of uint256 stor1;
mapping of struct proposals;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    return proposals[arg1].field_0, 
           address(proposals[arg1].field_256),
           proposals[arg1].field_1536,
           proposals[arg1].field_1792,
           bool(uint8(proposals[arg1].field_2048)),
           bool(uint8(proposals[arg1].field_2056)),
           proposals[arg1].field_2304
}

function getMembersRegistry() {
    return membersRegistryAddress
}

function proposalCount() {
    return stor1.length
}

function _fallback() payable {
    revert
}

function setMembersRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if membersRegistryAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokensFarmCongress:setMembersRegistry: membersRegistry is already set'
    membersRegistryAddress = arg1
}

function castVote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(membersRegistryAddress)
    staticcall membersRegistryAddress.isMember(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Only TokensFarmCongress member can call this function'
    if uint8(proposals[arg1][10][address(msg.sender)].field_0):
        revert with 0, 'TokensFarmCongress::_castVote: voter already voted'
    if not arg2:
        if proposals[arg1].field_1792 + 1 < proposals[arg1].field_1792:
            revert with 0, 'addition overflow'
        proposals[arg1].field_1792++
    else:
        if proposals[arg1].field_1536 + 1 < proposals[arg1].field_1536:
            revert with 0, 'addition overflow'
        proposals[arg1].field_1536++
    uint8(proposals[arg1][10][address(msg.sender)].field_0) = 1
    Mask(248, 0, proposals[arg1][10][address(msg.sender)].field_8) = Mask(248, 0, arg2)
    proposals[arg1][10][address(msg.sender)].field_256 % 1 = 0
    emit VoteCast(msg.sender, arg1, arg2);
}

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(membersRegistryAddress)
    staticcall membersRegistryAddress.isMember(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Only TokensFarmCongress member can call this function'
    if uint8(proposals[arg1].field_2056):
        revert with 0, 'TokensFarmCongress:cancel: Proposal already executed or canceled'
    if uint8(proposals[arg1].field_2048):
        revert with 0, 'TokensFarmCongress:cancel: Proposal already executed or canceled'
    if block.timestamp < proposals[arg1].field_2304 + (72 * 24 * 3600):
        revert with 0, 'TokensFarmCongress:cancel: Time lock hasn't ended yet'
    require ext_code.size(membersRegistryAddress)
    staticcall membersRegistryAddress.getMinimalQuorum() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if proposals[arg1].field_1536 >= ext_call.return_data[0]:
        revert with 0, 'TokensFarmCongress:cancel: Proposal already reached quorum'
    uint8(proposals[arg1].field_2048) = 1
    emit ProposalCanceled(arg1);
}

function getActions(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    mem[96] = proposals[arg1].field_512
    if not proposals[arg1].field_512:
        mem[(32 * proposals[arg1].field_512) + 128] = proposals[arg1].field_768
        if not proposals[arg1].field_768:
            mem[64] = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + (32 * proposals[arg1].field_1024) + 192
            mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160] = proposals[arg1].field_1024
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            idx = 0
            while idx < proposals[arg1].field_1024:
                mem[0] = sha3(arg1, 2) + 4
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].length) + 32
                mem[_30] = proposals[arg1][idx + 4].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 4)
                mem[_30 + 32] = proposals[arg1][idx + 4].field_0
                t = _30 + 32
                u = sha3(mem[0])
                while _30 + proposals[arg1][idx + 4].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            _28 = mem[64]
            mem[64] = mem[64] + (32 * proposals[arg1].field_1280) + 32
            mem[_28] = proposals[arg1].field_1280
            s = _28 + 32
            idx = 0
            while idx < proposals[arg1].field_1280:
                mem[0] = sha3(arg1, 2) + 5
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].length) + 32
                mem[_52] = proposals[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 5)
                mem[_52 + 32] = proposals[arg1][idx + 5].field_0
                t = _52 + 32
                u = sha3(mem[0])
                while _52 + proposals[arg1][idx + 5].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            _55 = mem[64]
            mem[mem[64]] = 128
            _63 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _63:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_55 + 32] = (32 * _63) + 160
            _119 = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_55 + (32 * _63) + 160] = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_55 + (32 * _63) + 192 len 32 * _119] = mem[(32 * proposals[arg1].field_512) + 160 len 32 * _119]
            mem[_55 + 64] = (32 * _63) + (32 * _119) + 192
            _177 = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            mem[_55 + (32 * _63) + (32 * _119) + 192] = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            idx = 0
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            t = _55 + (32 * _63) + (32 * _119) + (32 * _177) + 224
            u = _55 + (32 * _63) + (32 * _119) + 224
            while idx < _177:
                mem[u] = t + -_55 + -(32 * _63) + -(32 * _119) - 224
                _232 = mem[s]
                _238 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _238:
                    mem[v + t + 32] = mem[v + _232 + 32]
                    v = v + 32
                    continue 
                if ceil32(_238) > _238:
                    mem[t + _238 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_238) + t + 32
                u = u + 32
                continue 
            mem[_55 + 96] = t - _55
            _239 = mem[_28]
            mem[t] = mem[_28]
            idx = 0
            s = _28 + 32
            u = t + (32 * _239) + 32
            v = t + 32
            while idx < _239:
                mem[v] = u + -t - 32
                _285 = mem[s]
                _291 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _291:
                    mem[t + u + 32] = mem[t + _285 + 32]
                    t = t + 32
                    continue 
                if ceil32(_291) > _291:
                    mem[u + _291 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_291) + u + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 2) + 3
            mem[(32 * proposals[arg1].field_512) + 160] = proposals[arg1][3].field_0
            idx = (32 * proposals[arg1].field_512) + 160
            s = 0
            while (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 128 > idx:
                mem[idx + 32] = proposals[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + (32 * proposals[arg1].field_1024) + 192
            mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160] = proposals[arg1].field_1024
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            idx = 0
            while idx < proposals[arg1].field_1024:
                mem[0] = sha3(arg1, 2) + 4
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].length) + 32
                mem[_115] = proposals[arg1][idx + 4].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 4)
                mem[_115 + 32] = proposals[arg1][idx + 4].field_0
                t = _115 + 32
                u = sha3(mem[0])
                while _115 + proposals[arg1][idx + 4].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _115
                s = s + 32
                idx = idx + 1
                continue 
            _113 = mem[64]
            mem[64] = mem[64] + (32 * proposals[arg1].field_1280) + 32
            mem[_113] = proposals[arg1].field_1280
            s = _113 + 32
            idx = 0
            while idx < proposals[arg1].field_1280:
                mem[0] = sha3(arg1, 2) + 5
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].length) + 32
                mem[_169] = proposals[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 5)
                mem[_169 + 32] = proposals[arg1][idx + 5].field_0
                t = _169 + 32
                u = sha3(mem[0])
                while _169 + proposals[arg1][idx + 5].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            _172 = mem[64]
            mem[mem[64]] = 128
            _180 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _180:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_172 + 32] = (32 * _180) + 160
            _240 = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_172 + (32 * _180) + 160] = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_172 + (32 * _180) + 192 len 32 * _240] = mem[(32 * proposals[arg1].field_512) + 160 len 32 * _240]
            mem[_172 + 64] = (32 * _180) + (32 * _240) + 192
            _294 = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            mem[_172 + (32 * _180) + (32 * _240) + 192] = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            idx = 0
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            t = _172 + (32 * _180) + (32 * _240) + (32 * _294) + 224
            u = _172 + (32 * _180) + (32 * _240) + 224
            while idx < _294:
                mem[u] = t + -_172 + -(32 * _180) + -(32 * _240) - 224
                _328 = mem[s]
                _331 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _331:
                    mem[v + t + 32] = mem[v + _328 + 32]
                    v = v + 32
                    continue 
                if ceil32(_331) > _331:
                    mem[t + _331 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_331) + t + 32
                u = u + 32
                continue 
            mem[_172 + 96] = t - _172
            _333 = mem[_113]
            mem[t] = mem[_113]
            idx = 0
            s = _113 + 32
            u = t + (32 * _333) + 32
            v = t + 32
            while idx < _333:
                mem[v] = u + -t - 32
                _356 = mem[s]
                _361 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _361:
                    mem[t + u + 32] = mem[t + _356 + 32]
                    t = t + 32
                    continue 
                if ceil32(_361) > _361:
                    mem[u + _361 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_361) + u + 32
                v = v + 32
                continue 
    else:
        mem[0] = sha3(arg1, 2) + 2
        mem[128] = address(proposals[arg1][2].field_0)
        idx = 128
        s = 0
        while (32 * proposals[arg1].field_512) + 96 > idx:
            mem[idx + 32] = address(proposals[arg1][s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * proposals[arg1].field_512) + 128] = proposals[arg1].field_768
        if not proposals[arg1].field_768:
            mem[64] = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + (32 * proposals[arg1].field_1024) + 192
            mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160] = proposals[arg1].field_1024
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            idx = 0
            while idx < proposals[arg1].field_1024:
                mem[0] = sha3(arg1, 2) + 4
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].length) + 32
                mem[_118] = proposals[arg1][idx + 4].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 4)
                mem[_118 + 32] = proposals[arg1][idx + 4].field_0
                t = _118 + 32
                u = sha3(mem[0])
                while _118 + proposals[arg1][idx + 4].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _118
                s = s + 32
                idx = idx + 1
                continue 
            _116 = mem[64]
            mem[64] = mem[64] + (32 * proposals[arg1].field_1280) + 32
            mem[_116] = proposals[arg1].field_1280
            s = _116 + 32
            idx = 0
            while idx < proposals[arg1].field_1280:
                mem[0] = sha3(arg1, 2) + 5
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].length) + 32
                mem[_171] = proposals[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 5)
                mem[_171 + 32] = proposals[arg1][idx + 5].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + proposals[arg1][idx + 5].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            _173 = mem[64]
            mem[mem[64]] = 128
            _181 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _181:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_173 + 32] = (32 * _181) + 160
            _241 = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_173 + (32 * _181) + 160] = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_173 + (32 * _181) + 192 len 32 * _241] = mem[(32 * proposals[arg1].field_512) + 160 len 32 * _241]
            mem[_173 + 64] = (32 * _181) + (32 * _241) + 192
            _295 = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            mem[_173 + (32 * _181) + (32 * _241) + 192] = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            idx = 0
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            t = _173 + (32 * _181) + (32 * _241) + (32 * _295) + 224
            u = _173 + (32 * _181) + (32 * _241) + 224
            while idx < _295:
                mem[u] = t + -_173 + -(32 * _181) + -(32 * _241) - 224
                _329 = mem[s]
                _332 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _332:
                    mem[v + t + 32] = mem[v + _329 + 32]
                    v = v + 32
                    continue 
                if ceil32(_332) > _332:
                    mem[t + _332 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_332) + t + 32
                u = u + 32
                continue 
            mem[_173 + 96] = t - _173
            _334 = mem[_116]
            mem[t] = mem[_116]
            idx = 0
            s = _116 + 32
            u = t + (32 * _334) + 32
            v = t + 32
            while idx < _334:
                mem[v] = u + -t - 32
                _358 = mem[s]
                _362 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _362:
                    mem[t + u + 32] = mem[t + _358 + 32]
                    t = t + 32
                    continue 
                if ceil32(_362) > _362:
                    mem[u + _362 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_362) + u + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 2) + 3
            mem[(32 * proposals[arg1].field_512) + 160] = proposals[arg1][3].field_0
            idx = (32 * proposals[arg1].field_512) + 160
            s = 0
            while (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 128 > idx:
                mem[idx + 32] = proposals[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + (32 * proposals[arg1].field_1024) + 192
            mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160] = proposals[arg1].field_1024
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            idx = 0
            while idx < proposals[arg1].field_1024:
                mem[0] = sha3(arg1, 2) + 4
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].length) + 32
                mem[_237] = proposals[arg1][idx + 4].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 4)
                mem[_237 + 32] = proposals[arg1][idx + 4].field_0
                t = _237 + 32
                u = sha3(mem[0])
                while _237 + proposals[arg1][idx + 4].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _237
                s = s + 32
                idx = idx + 1
                continue 
            _235 = mem[64]
            mem[64] = mem[64] + (32 * proposals[arg1].field_1280) + 32
            mem[_235] = proposals[arg1].field_1280
            s = _235 + 32
            idx = 0
            while idx < proposals[arg1].field_1280:
                mem[0] = sha3(arg1, 2) + 5
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].length) + 32
                mem[_290] = proposals[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 2) + 5)
                mem[_290 + 32] = proposals[arg1][idx + 5].field_0
                t = _290 + 32
                u = sha3(mem[0])
                while _290 + proposals[arg1][idx + 5].length > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _290
                s = s + 32
                idx = idx + 1
                continue 
            _292 = mem[64]
            mem[mem[64]] = 128
            _297 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _297:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_292 + 32] = (32 * _297) + 160
            _335 = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_292 + (32 * _297) + 160] = mem[(32 * proposals[arg1].field_512) + 128]
            mem[_292 + (32 * _297) + 192 len 32 * _335] = mem[(32 * proposals[arg1].field_512) + 160 len 32 * _335]
            mem[_292 + 64] = (32 * _297) + (32 * _335) + 192
            _365 = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            mem[_292 + (32 * _297) + (32 * _335) + 192] = mem[(32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 160]
            idx = 0
            s = (32 * proposals[arg1].field_512) + (32 * proposals[arg1].field_768) + 192
            t = _292 + (32 * _297) + (32 * _335) + (32 * _365) + 224
            u = _292 + (32 * _297) + (32 * _335) + 224
            while idx < _365:
                mem[u] = t + -_292 + -(32 * _297) + -(32 * _335) - 224
                _378 = mem[s]
                _379 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _379:
                    mem[v + t + 32] = mem[v + _378 + 32]
                    v = v + 32
                    continue 
                if ceil32(_379) > _379:
                    mem[t + _379 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_379) + t + 32
                u = u + 32
                continue 
            mem[_292 + 96] = t - _292
            _380 = mem[_235]
            mem[t] = mem[_235]
            idx = 0
            s = _235 + 32
            u = t + (32 * _380) + 32
            v = t + 32
            while idx < _380:
                mem[v] = u + -t - 32
                _386 = mem[s]
                _388 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _388:
                    mem[t + u + 32] = mem[t + _386 + 32]
                    t = t + 32
                    continue 
                if ceil32(_388) > _388:
                    mem[u + _388 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_388) + u + 32
                v = v + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(membersRegistryAddress)
    staticcall membersRegistryAddress.isMember(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Only TokensFarmCongress member can call this function'
    mem[0] = arg1
    mem[32] = 2
    if uint8(proposals[arg1].field_2056):
        revert with 0, 'Proposal was canceled or executed'
    if uint8(proposals[arg1].field_2048):
        revert with 0, 'Proposal was canceled or executed'
    uint8(proposals[arg1].field_2056) = 1
    require ext_code.size(membersRegistryAddress)
    staticcall membersRegistryAddress.getMinimalQuorum() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if proposals[arg1].field_1536 < ext_call.return_data[0]:
        revert with 0, 'Not enough votes in favor'
    idx = 0
    while idx < proposals[arg1].field_512:
        require idx < proposals[arg1].field_1024
        if not proposals[arg1][idx + 4].length:
            require idx < proposals[arg1].field_1280
            mem[0] = sha3(arg1, 2) + 5
            _1125 = mem[64]
            mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].length) + 32
            mem[_1125] = proposals[arg1][idx + 5].length
            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
            mem[_1125 + 32] = proposals[arg1][idx + 5].field_0
            s = _1125 + 32
            t = sha3(mem[0])
            while _1125 + proposals[arg1][idx + 5].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            require idx < proposals[arg1].field_512
            require idx < proposals[arg1].field_768
            mem[0] = sha3(arg1, 2) + 3
            _2250 = mem[64]
            _2260 = mem[_1125]
            s = 0
            while s < _2260:
                mem[s + _2250] = mem[s + _1125 + 32]
                s = s + 32
                continue 
            if ceil32(_2260) <= _2260:
                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                   value proposals[arg1][idx + 3].field_0 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2260 + _2250 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                    require idx < proposals[arg1].field_512
                    require idx < proposals[arg1].field_768
                    require idx < proposals[arg1].field_1024
                    require idx < proposals[arg1].field_1280
                    mem[0] = sha3(arg1, 2) + 5
                    _3560 = mem[64]
                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                    mem[mem[64] + 32] = 96
                    if not bool(proposals[arg1][idx + 4].field_0):
                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                        mem[mem[64] + 64] = 160
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[_3560 + 160] = proposals[arg1][idx + 5].field_1 % 128
                            mem[_3560 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3560 + -mem[64] + 224],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_3560 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[_3560 + s + 192] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len _3560 + s + -mem[64] + 192],
                                                        address(proposals[arg1][idx + 2].field_0),
                        idx = idx + 1
                        continue 
                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                        mem[mem[64] + 64] = -mem[64]
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64] + 64],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len s + -mem[64] + 32],
                                                        address(proposals[arg1][idx + 2].field_0),
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                    s = 0
                    t = sha3(sha3(sha3(arg1, 2) + 4) + s)
                    while s < uint255(proposals[arg1][s + 4].field_1):
                        mem[mem[64] + s + 128] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_3560 + 64] = s + 128
                    if not bool(proposals[arg1][s + 5].field_0):
                        mem[_3560 + s + 128] = proposals[arg1][s + 5].field_1 % 128
                        mem[_3560 + s + 160] = Mask(248, 8, proposals[arg1][s + 5].field_0)
                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                mem[mem[64] len _3560 + s + -mem[64] + 192],
                                                address(proposals[arg1][s + 2].field_0),
                    else:
                        if bool(proposals[arg1][s + 5].field_0) != 1:
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64]],
                                                    address(proposals[arg1][s + 2].field_0),
                        else:
                            mem[_3560 + s + 128] = uint255(proposals[arg1][s + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 2) + 5) + s
                            t = 0
                            u = sha3(sha3(sha3(arg1, 2) + 5) + s)
                            while t < uint255(proposals[arg1][s + 5].field_1):
                                mem[_3560 + s + t + 160] = stor[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3560 + s + t + -mem[64] + 160],
                                                    address(proposals[arg1][s + 2].field_0),
                else:
                    _3341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3341] = return_data.size
                    mem[_3341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                    require idx < proposals[arg1].field_512
                    require idx < proposals[arg1].field_768
                    require idx < proposals[arg1].field_1024
                    require idx < proposals[arg1].field_1280
                    mem[0] = sha3(arg1, 2) + 5
                    _3562 = mem[64]
                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                    mem[mem[64] + 32] = 96
                    if not bool(proposals[arg1][idx + 4].field_0):
                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                        mem[mem[64] + 64] = 160
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[_3562 + 160] = proposals[arg1][idx + 5].field_1 % 128
                            mem[_3562 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3562 + -mem[64] + 224],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_3562 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[_3562 + s + 192] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len _3562 + s + -mem[64] + 192],
                                                        address(proposals[arg1][idx + 2].field_0),
                        idx = idx + 1
                        continue 
                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                        mem[mem[64] + 64] = -mem[64]
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64] + 64],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len s + -mem[64] + 32],
                                                        address(proposals[arg1][idx + 2].field_0),
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                    s = 0
                    t = sha3(sha3(sha3(arg1, 2) + 4) + s)
                    while s < uint255(proposals[arg1][s + 4].field_1):
                        mem[mem[64] + s + 128] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_3562 + 64] = s + 128
                    if not bool(proposals[arg1][s + 5].field_0):
                        mem[_3562 + s + 128] = proposals[arg1][s + 5].field_1 % 128
                        mem[_3562 + s + 160] = Mask(248, 8, proposals[arg1][s + 5].field_0)
                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                mem[mem[64] len _3562 + s + -mem[64] + 192],
                                                address(proposals[arg1][s + 2].field_0),
                    else:
                        if bool(proposals[arg1][s + 5].field_0) != 1:
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64]],
                                                    address(proposals[arg1][s + 2].field_0),
                        else:
                            mem[_3562 + s + 128] = uint255(proposals[arg1][s + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 2) + 5) + s
                            t = 0
                            u = sha3(sha3(sha3(arg1, 2) + 5) + s)
                            while t < uint255(proposals[arg1][s + 5].field_1):
                                mem[_3562 + s + t + 160] = stor[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3562 + s + t + -mem[64] + 160],
                                                    address(proposals[arg1][s + 2].field_0),
                s = s + 1
                continue 
            mem[_2250 + _2260] = 0
            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
               value proposals[arg1][idx + 3].field_0 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2260 + _2250 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                require idx < proposals[arg1].field_512
                require idx < proposals[arg1].field_768
                require idx < proposals[arg1].field_1024
                require idx < proposals[arg1].field_1280
                mem[0] = sha3(arg1, 2) + 5
                _3586 = mem[64]
                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                mem[mem[64] + 32] = 96
                if not bool(proposals[arg1][idx + 4].field_0):
                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                    mem[mem[64] + 64] = 160
                    if not bool(proposals[arg1][idx + 5].field_0):
                        mem[_3586 + 160] = proposals[arg1][idx + 5].field_1 % 128
                        mem[_3586 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                mem[mem[64] len _3586 + -mem[64] + 224],
                                                address(proposals[arg1][idx + 2].field_0),
                    else:
                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64]],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_3586 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                mem[_3586 + s + 192] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3586 + s + -mem[64] + 192],
                                                    address(proposals[arg1][idx + 2].field_0),
                else:
                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                        mem[mem[64] + 64] = -mem[64]
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64] + 64],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len s + -mem[64] + 32],
                                                        address(proposals[arg1][idx + 2].field_0),
                    else:
                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                        while s < uint255(proposals[arg1][idx + 4].field_1):
                            mem[mem[64] + s + 128] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + 64] = s + 128
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[_3586 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                            mem[_3586 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3586 + s + -mem[64] + 192],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_3586 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                t = 0
                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[_3586 + s + t + 160] = stor[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len _3586 + s + t + -mem[64] + 160],
                                                        address(proposals[arg1][idx + 2].field_0),
            else:
                _3368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3368] = return_data.size
                mem[_3368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                require idx < proposals[arg1].field_512
                require idx < proposals[arg1].field_768
                require idx < proposals[arg1].field_1024
                require idx < proposals[arg1].field_1280
                mem[0] = sha3(arg1, 2) + 5
                _3588 = mem[64]
                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                mem[mem[64] + 32] = 96
                if not bool(proposals[arg1][idx + 4].field_0):
                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                    mem[mem[64] + 64] = 160
                    if not bool(proposals[arg1][idx + 5].field_0):
                        mem[_3588 + 160] = proposals[arg1][idx + 5].field_1 % 128
                        mem[_3588 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                mem[mem[64] len _3588 + -mem[64] + 224],
                                                address(proposals[arg1][idx + 2].field_0),
                    else:
                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64]],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_3588 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                mem[_3588 + s + 192] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3588 + s + -mem[64] + 192],
                                                    address(proposals[arg1][idx + 2].field_0),
                else:
                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                        mem[mem[64] + 64] = -mem[64]
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len -mem[64] + 64],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len s + -mem[64] + 32],
                                                        address(proposals[arg1][idx + 2].field_0),
                    else:
                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                        while s < uint255(proposals[arg1][idx + 4].field_1):
                            mem[mem[64] + s + 128] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + 64] = s + 128
                        if not bool(proposals[arg1][idx + 5].field_0):
                            mem[_3588 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                            mem[_3588 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                    mem[mem[64] len _3588 + s + -mem[64] + 192],
                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len -mem[64]],
                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_3588 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                t = 0
                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                    mem[_3588 + s + t + 160] = stor[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                        mem[mem[64] len _3588 + s + t + -mem[64] + 160],
                                                        address(proposals[arg1][idx + 2].field_0),
        else:
            require idx < proposals[arg1].field_1024
            _1123 = mem[64]
            if not bool(proposals[arg1][idx + 4].field_0):
                mem[mem[64]] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                _1134 = sha3(mem[mem[64] len proposals[arg1][idx + 4].field_1 % 128])
                require idx < proposals[arg1].field_1280
                mem[0] = sha3(arg1, 2) + 5
                _1138 = mem[64]
                mem[mem[64] + 32] = Mask(32, 224, _1134)
                if not bool(proposals[arg1][idx + 5].field_0):
                    mem[mem[64] + 36] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                    _1160 = mem[64]
                    mem[mem[64]] = proposals[arg1][idx + 5].field_1 % 128 + 4
                    mem[64] = mem[64] + proposals[arg1][idx + 5].field_1 % 128 + 36
                    require idx < proposals[arg1].field_512
                    require idx < proposals[arg1].field_768
                    mem[0] = sha3(arg1, 2) + 3
                    _1194 = mem[_1160]
                    s = 0
                    while s < _1194:
                        mem[s + _1138 + proposals[arg1][idx + 5].field_1 % 128 + 36] = mem[s + _1160 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1194) <= _1194:
                        call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                           value proposals[arg1][idx + 3].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1194 + _1138 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            require idx < proposals[arg1].field_1024
                            require idx < proposals[arg1].field_1280
                            mem[0] = sha3(arg1, 2) + 5
                            _2379 = mem[64]
                            mem[mem[64]] = proposals[arg1][idx + 3].field_0
                            mem[mem[64] + 32] = 96
                            if not bool(proposals[arg1][idx + 4].field_0):
                                mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                mem[mem[64] + 64] = 160
                                if not bool(proposals[arg1][idx + 5].field_0):
                                    mem[_2379 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                    mem[_2379 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                            mem[mem[64] len _2379 + -mem[64] + 224],
                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 5].field_0) != 1:
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64]],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[_2379 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                        while s < uint255(proposals[arg1][idx + 5].field_1):
                                            mem[_2379 + s + 192] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2379 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                            else:
                                if bool(proposals[arg1][idx + 4].field_0) != 1:
                                    mem[mem[64] + 64] = -mem[64]
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64] + 64],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len s + -mem[64] + 32],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                    while s < uint255(proposals[arg1][idx + 4].field_1):
                                        mem[mem[64] + s + 128] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_2379 + 64] = s + 128
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2379 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2379 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2379 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2379 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while t < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2379 + s + t + 160] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2379 + s + t + -mem[64] + 160],
                                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            _2237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2237] = return_data.size
                            mem[_2237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            require idx < proposals[arg1].field_1024
                            require idx < proposals[arg1].field_1280
                            mem[0] = sha3(arg1, 2) + 5
                            _2381 = mem[64]
                            mem[mem[64]] = proposals[arg1][idx + 3].field_0
                            mem[mem[64] + 32] = 96
                            if not bool(proposals[arg1][idx + 4].field_0):
                                mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                mem[mem[64] + 64] = 160
                                if not bool(proposals[arg1][idx + 5].field_0):
                                    mem[_2381 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                    mem[_2381 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                            mem[mem[64] len _2381 + -mem[64] + 224],
                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 5].field_0) != 1:
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64]],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[_2381 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                        while s < uint255(proposals[arg1][idx + 5].field_1):
                                            mem[_2381 + s + 192] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2381 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                            else:
                                if bool(proposals[arg1][idx + 4].field_0) != 1:
                                    mem[mem[64] + 64] = -mem[64]
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64] + 64],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len s + -mem[64] + 32],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                    while s < uint255(proposals[arg1][idx + 4].field_1):
                                        mem[mem[64] + s + 128] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_2381 + 64] = s + 128
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2381 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2381 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2381 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2381 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while t < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2381 + s + t + 160] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2381 + s + t + -mem[64] + 160],
                                                                    address(proposals[arg1][idx + 2].field_0),
                    else:
                        mem[_1138 + proposals[arg1][idx + 5].field_1 % 128 + _1194 + 36] = 0
                        call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                           value proposals[arg1][idx + 3].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1194 + _1138 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            require idx < proposals[arg1].field_1024
                            require idx < proposals[arg1].field_1280
                            mem[0] = sha3(arg1, 2) + 5
                            _2418 = mem[64]
                            mem[mem[64]] = proposals[arg1][idx + 3].field_0
                            mem[mem[64] + 32] = 96
                            if not bool(proposals[arg1][idx + 4].field_0):
                                mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                mem[mem[64] + 64] = 160
                                if not bool(proposals[arg1][idx + 5].field_0):
                                    mem[_2418 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                    mem[_2418 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                            mem[mem[64] len _2418 + -mem[64] + 224],
                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 5].field_0) != 1:
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64]],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[_2418 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                        while s < uint255(proposals[arg1][idx + 5].field_1):
                                            mem[_2418 + s + 192] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2418 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                            else:
                                if bool(proposals[arg1][idx + 4].field_0) != 1:
                                    mem[mem[64] + 64] = -mem[64]
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64] + 64],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len s + -mem[64] + 32],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                    while s < uint255(proposals[arg1][idx + 4].field_1):
                                        mem[mem[64] + s + 128] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_2418 + 64] = s + 128
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2418 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2418 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2418 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2418 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while t < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2418 + s + t + 160] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2418 + s + t + -mem[64] + 160],
                                                                    address(proposals[arg1][idx + 2].field_0),
                        else:
                            _2253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2253] = return_data.size
                            mem[_2253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            require idx < proposals[arg1].field_1024
                            require idx < proposals[arg1].field_1280
                            mem[0] = sha3(arg1, 2) + 5
                            _2420 = mem[64]
                            mem[mem[64]] = proposals[arg1][idx + 3].field_0
                            mem[mem[64] + 32] = 96
                            if not bool(proposals[arg1][idx + 4].field_0):
                                mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                mem[mem[64] + 64] = 160
                                if not bool(proposals[arg1][idx + 5].field_0):
                                    mem[_2420 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                    mem[_2420 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                            mem[mem[64] len _2420 + -mem[64] + 224],
                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 5].field_0) != 1:
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64]],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[_2420 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                        while s < uint255(proposals[arg1][idx + 5].field_1):
                                            mem[_2420 + s + 192] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2420 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                            else:
                                if bool(proposals[arg1][idx + 4].field_0) != 1:
                                    mem[mem[64] + 64] = -mem[64]
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len -mem[64] + 64],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len s + -mem[64] + 32],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                    while s < uint255(proposals[arg1][idx + 4].field_1):
                                        mem[mem[64] + s + 128] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_2420 + 64] = s + 128
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2420 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2420 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2420 + s + -mem[64] + 192],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2420 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while t < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2420 + s + t + 160] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2420 + s + t + -mem[64] + 160],
                                                                    address(proposals[arg1][idx + 2].field_0),
                else:
                    if bool(proposals[arg1][idx + 5].field_0) != 1:
                        _1163 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        require idx < proposals[arg1].field_512
                        require idx < proposals[arg1].field_768
                        mem[0] = sha3(arg1, 2) + 3
                        _1214 = mem[_1163]
                        s = 0
                        while s < _1214:
                            mem[s] = mem[s + _1163 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1214) <= _1214:
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1214 + -mem[64] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2386 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2386 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2386 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2386 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2386 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2386 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2386 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2386 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2386 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2386 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2386 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2386 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2386 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2386 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _2239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2239] = return_data.size
                                mem[_2239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2388 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2388 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2388 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2388 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2388 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2388 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2388 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2388 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2388 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2388 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2388 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2388 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2388 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2388 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_1214] = 0
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1214 + -mem[64] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2422 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2422 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2422 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2422 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2422 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2422 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2422 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2422 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2422 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2422 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2422 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2422 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2422 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2422 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _2255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2255] = return_data.size
                                mem[_2255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2424 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2424 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2424 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2424 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2424 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2424 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2424 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2424 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2424 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2424 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2424 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2424 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2424 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2424 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                    else:
                        s = 0
                        t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                        while s < uint255(proposals[arg1][idx + 5].field_1):
                            mem[s + _1138 + 36] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _2227 = mem[64]
                        mem[mem[64]] = _1138 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 4
                        mem[64] = _1138 + uint255(proposals[arg1][idx + 5].field_1) + 36
                        require idx < proposals[arg1].field_512
                        require idx < proposals[arg1].field_768
                        mem[0] = sha3(arg1, 2) + 3
                        _2282 = mem[_2227]
                        s = 0
                        while s < _2282:
                            mem[s + _1138 + uint255(proposals[arg1][idx + 5].field_1) + 36] = mem[s + _2227 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2282) <= _2282:
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2282 + _1138 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3519 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3519 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3519 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3519 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3519 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3519 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3519 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3519 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3519 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3519 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3519 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3519 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3519 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3519 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _3333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3333] = return_data.size
                                mem[_3333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3521 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3521 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3521 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3521 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3521 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3521 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3521 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3521 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3521 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3521 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3521 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3521 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3521 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3521 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_1138 + uint255(proposals[arg1][idx + 5].field_1) + _2282 + 36] = 0
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2282 + _1138 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3570 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3570 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3570 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3570 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3570 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3570 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3570 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3570 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3570 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3570 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3570 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3570 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3570 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3570 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _3347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3347] = return_data.size
                                mem[_3347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3572 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3572 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3572 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3572 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3572 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3572 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3572 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3572 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3572 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3572 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3572 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3572 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3572 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3572 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
            else:
                if bool(proposals[arg1][idx + 4].field_0) != 1:
                    _1140 = sha3(mem[mem[64] len -mem[64]])
                    require idx < proposals[arg1].field_1280
                    mem[0] = sha3(arg1, 2) + 5
                    _1144 = mem[64]
                    mem[mem[64] + 32] = Mask(32, 224, _1140)
                    if not bool(proposals[arg1][idx + 5].field_0):
                        mem[mem[64] + 36] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                        _1165 = mem[64]
                        mem[mem[64]] = proposals[arg1][idx + 5].field_1 % 128 + 4
                        mem[64] = mem[64] + proposals[arg1][idx + 5].field_1 % 128 + 36
                        require idx < proposals[arg1].field_512
                        require idx < proposals[arg1].field_768
                        mem[0] = sha3(arg1, 2) + 3
                        _1216 = mem[_1165]
                        s = 0
                        while s < _1216:
                            mem[s + _1144 + proposals[arg1][idx + 5].field_1 % 128 + 36] = mem[s + _1165 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1216) <= _1216:
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1216 + _1144 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2393 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2393 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2393 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2393 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2393 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2393 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2393 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2393 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2393 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2393 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2393 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2393 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2393 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2393 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _2243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2243] = return_data.size
                                mem[_2243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2395 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2395 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2395 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2395 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2395 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2395 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2395 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2395 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2395 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2395 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2395 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2395 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2395 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2395 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_1144 + proposals[arg1][idx + 5].field_1 % 128 + _1216 + 36] = 0
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1216 + _1144 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2427 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2427 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2427 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2427 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2427 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2427 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2427 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2427 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2427 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2427 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2427 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2427 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2427 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2427 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _2256 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2256] = return_data.size
                                mem[_2256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _2429 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_2429 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_2429 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _2429 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_2429 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_2429 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2429 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_2429 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2429 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2429 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2429 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2429 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2429 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2429 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                    else:
                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                            _1171 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            mem[0] = sha3(arg1, 2) + 3
                            _1240 = mem[_1171]
                            s = 0
                            while s < _1240:
                                mem[s] = mem[s + _1171 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1240) <= _1240:
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1240 + -mem[64] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _2400 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2400 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2400 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2400 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2400 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2400 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2400 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_2400 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_2400 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_2400 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2400 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_2400 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_2400 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _2400 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _2245 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2245] = return_data.size
                                    mem[_2245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _2402 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2402 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2402 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2402 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2402 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2402 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2402 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_2402 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_2402 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_2402 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2402 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_2402 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_2402 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _2402 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_1240] = 0
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1240 + -mem[64] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _2431 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2431 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2431 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2431 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2431 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2431 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2431 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_2431 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_2431 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2431 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_2431 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_2431 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _2431 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _2258 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2258] = return_data.size
                                    mem[_2258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _2433 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_2433 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_2433 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _2433 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_2433 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_2433 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2433 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_2433 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_2433 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _2433 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_2433 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_2433 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _2433 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                        else:
                            s = 0
                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                mem[s + _1144 + 36] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _2232 = mem[64]
                            mem[mem[64]] = _1144 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 4
                            mem[64] = _1144 + uint255(proposals[arg1][idx + 5].field_1) + 36
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            mem[0] = sha3(arg1, 2) + 3
                            _2291 = mem[_2232]
                            s = 0
                            while s < _2291:
                                mem[s + _1144 + uint255(proposals[arg1][idx + 5].field_1) + 36] = mem[s + _2232 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2291) <= _2291:
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2291 + _1144 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3546 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3546 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3546 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3546 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3546 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3546 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3546 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3546 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3546 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3546 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3546 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3546 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3546 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3546 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _3339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3339] = return_data.size
                                    mem[_3339 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3548 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3548 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3548 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3548 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3548 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3548 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3548 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3548 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3548 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3548 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3548 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3548 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3548 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3548 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_1144 + uint255(proposals[arg1][idx + 5].field_1) + _2291 + 36] = 0
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2291 + _1144 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3582 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3582 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3582 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3582 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3582 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3582 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3582 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3582 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3582 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3582 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3582 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3582 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3582 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3582 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _3359 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3359] = return_data.size
                                    mem[_3359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3584 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3584 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3584 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3584 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3584 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3584 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3584 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3584 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3584 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3584 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3584 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3584 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3584 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3584 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                else:
                    mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(proposals[arg1][idx + 4].field_1):
                        mem[s + _1123] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    _2230 = sha3(mem[mem[64] len _1123 + uint255(proposals[arg1][idx + 4].field_1) - mem[64]])
                    require idx < proposals[arg1].field_1280
                    mem[0] = sha3(arg1, 2) + 5
                    _2242 = mem[64]
                    mem[mem[64] + 32] = Mask(32, 224, _2230)
                    if not bool(proposals[arg1][idx + 5].field_0):
                        mem[mem[64] + 36] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                        _2391 = mem[64]
                        mem[mem[64]] = proposals[arg1][idx + 5].field_1 % 128 + 4
                        mem[64] = mem[64] + proposals[arg1][idx + 5].field_1 % 128 + 36
                        require idx < proposals[arg1].field_512
                        require idx < proposals[arg1].field_768
                        mem[0] = sha3(arg1, 2) + 3
                        _2455 = mem[_2391]
                        s = 0
                        while s < _2455:
                            mem[s + _2242 + proposals[arg1][idx + 5].field_1 % 128 + 36] = mem[s + _2391 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2455) <= _2455:
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2455 + _2242 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3529 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3529 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3529 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3529 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3529 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3529 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3529 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3529 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3529 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3529 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3529 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3529 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3529 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3529 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _3335 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3335] = return_data.size
                                mem[_3335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3531 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3531 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3531 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3531 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3531 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3531 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3531 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3531 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3531 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3531 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3531 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3531 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3531 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3531 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                        else:
                            mem[_2242 + proposals[arg1][idx + 5].field_1 % 128 + _2455 + 36] = 0
                            call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                               value proposals[arg1][idx + 3].field_0 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2455 + _2242 + proposals[arg1][idx + 5].field_1 % 128 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3574 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3574 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3574 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3574 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3574 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3574 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3574 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3574 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3574 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3574 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3574 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3574 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3574 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3574 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                            else:
                                _3352 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_3352] = return_data.size
                                mem[_3352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                require idx < proposals[arg1].field_512
                                require idx < proposals[arg1].field_768
                                require idx < proposals[arg1].field_1024
                                require idx < proposals[arg1].field_1280
                                mem[0] = sha3(arg1, 2) + 5
                                _3576 = mem[64]
                                mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                mem[mem[64] + 32] = 96
                                if not bool(proposals[arg1][idx + 4].field_0):
                                    mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                    mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                    mem[mem[64] + 64] = 160
                                    if not bool(proposals[arg1][idx + 5].field_0):
                                        mem[_3576 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                        mem[_3576 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                        emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                mem[mem[64] len _3576 + -mem[64] + 224],
                                                                address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64]],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[_3576 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                                mem[_3576 + s + 192] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3576 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                else:
                                    if bool(proposals[arg1][idx + 4].field_0) != 1:
                                        mem[mem[64] + 64] = -mem[64]
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len -mem[64] + 64],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len s + -mem[64] + 32],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                        mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                        while s < uint255(proposals[arg1][idx + 4].field_1):
                                            mem[mem[64] + s + 128] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_3576 + 64] = s + 128
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3576 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3576 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3576 + s + -mem[64] + 192],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3576 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while t < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3576 + s + t + 160] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3576 + s + t + -mem[64] + 160],
                                                                        address(proposals[arg1][idx + 2].field_0),
                    else:
                        if bool(proposals[arg1][idx + 5].field_0) != 1:
                            _2425 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            mem[0] = sha3(arg1, 2) + 3
                            _2468 = mem[_2425]
                            s = 0
                            while s < _2468:
                                mem[s] = mem[s + _2425 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2468) <= _2468:
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2468 + -mem[64] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3536 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3536 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3536 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3536 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3536 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3536 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3536 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3536 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3536 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3536 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3536 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3536 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3536 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3536 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _3337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3337] = return_data.size
                                    mem[_3337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3538 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3538 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3538 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3538 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3538 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3538 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3538 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3538 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3538 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3538 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3538 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3538 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3538 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3538 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_2468] = 0
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2468 + -mem[64] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3578 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3578 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3578 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3578 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3578 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3578 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3578 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3578 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3578 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3578 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3578 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3578 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3578 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3578 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _3354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3354] = return_data.size
                                    mem[_3354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _3580 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_3580 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_3580 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _3580 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_3580 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_3580 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3580 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_3580 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_3580 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_3580 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _3580 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_3580 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_3580 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _3580 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                        else:
                            s = 0
                            t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                            while s < uint255(proposals[arg1][idx + 5].field_1):
                                mem[s + _2242 + 36] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _3329 = mem[64]
                            mem[mem[64]] = _2242 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 4
                            mem[64] = _2242 + uint255(proposals[arg1][idx + 5].field_1) + 36
                            require idx < proposals[arg1].field_512
                            require idx < proposals[arg1].field_768
                            mem[0] = sha3(arg1, 2) + 3
                            _3425 = mem[_3329]
                            s = 0
                            while s < _3425:
                                mem[s + _2242 + uint255(proposals[arg1][idx + 5].field_1) + 36] = mem[s + _3329 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3425) <= _3425:
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3425 + _2242 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _4089 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_4089 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_4089 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _4089 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_4089 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_4089 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4089 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_4089 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_4089 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_4089 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4089 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_4089 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_4089 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _4089 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _3999 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_3999] = return_data.size
                                    mem[_3999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _4091 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_4091 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_4091 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _4091 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_4091 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_4091 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4091 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_4091 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_4091 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_4091 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4091 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_4091 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_4091 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _4091 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                            else:
                                mem[_2242 + uint255(proposals[arg1][idx + 5].field_1) + _3425 + 36] = 0
                                call address(proposals[arg1][idx + 2].field_0).mem[mem[64] len 4] with:
                                   value proposals[arg1][idx + 3].field_0 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3425 + _2242 + uint255(proposals[arg1][idx + 5].field_1) + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _4107 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_4107 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_4107 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _4107 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_4107 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_4107 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4107 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_4107 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_4107 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_4107 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4107 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_4107 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_4107 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _4107 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                else:
                                    _4009 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4009] = return_data.size
                                    mem[_4009 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TokensFarmCongress::executeTransaction: Transaction execution reverted.'
                                    require idx < proposals[arg1].field_512
                                    require idx < proposals[arg1].field_768
                                    require idx < proposals[arg1].field_1024
                                    require idx < proposals[arg1].field_1280
                                    mem[0] = sha3(arg1, 2) + 5
                                    _4109 = mem[64]
                                    mem[mem[64]] = proposals[arg1][idx + 3].field_0
                                    mem[mem[64] + 32] = 96
                                    if not bool(proposals[arg1][idx + 4].field_0):
                                        mem[mem[64] + 96] = proposals[arg1][idx + 4].field_1 % 128
                                        mem[mem[64] + 128] = Mask(248, 8, proposals[arg1][idx + 4].field_0)
                                        mem[mem[64] + 64] = 160
                                        if not bool(proposals[arg1][idx + 5].field_0):
                                            mem[_4109 + 160] = proposals[arg1][idx + 5].field_1 % 128
                                            mem[_4109 + 192] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                            emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                    mem[mem[64] len _4109 + -mem[64] + 224],
                                                                    address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64]],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                mem[_4109 + 160] = uint255(proposals[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                while s < uint255(proposals[arg1][idx + 5].field_1):
                                                    mem[_4109 + s + 192] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4109 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                    else:
                                        if bool(proposals[arg1][idx + 4].field_0) != 1:
                                            mem[mem[64] + 64] = -mem[64]
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[0] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[32] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len -mem[64] + 64],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len s + -mem[64] + 32],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                        else:
                                            mem[mem[64] + 96] = uint255(proposals[arg1][idx + 4].field_1)
                                            mem[0] = sha3(sha3(arg1, 2) + 4) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 2) + 4) + idx)
                                            while s < uint255(proposals[arg1][idx + 4].field_1):
                                                mem[mem[64] + s + 128] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_4109 + 64] = s + 128
                                            if not bool(proposals[arg1][idx + 5].field_0):
                                                mem[_4109 + s + 128] = proposals[arg1][idx + 5].field_1 % 128
                                                mem[_4109 + s + 160] = Mask(248, 8, proposals[arg1][idx + 5].field_0)
                                                emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                        mem[mem[64] len _4109 + s + -mem[64] + 192],
                                                                        address(proposals[arg1][idx + 2].field_0),
                                            else:
                                                if bool(proposals[arg1][idx + 5].field_0) != 1:
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len -mem[64]],
                                                                            address(proposals[arg1][idx + 2].field_0),
                                                else:
                                                    mem[_4109 + s + 128] = uint255(proposals[arg1][idx + 5].field_1)
                                                    mem[0] = sha3(sha3(arg1, 2) + 5) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 2) + 5) + idx)
                                                    while t < uint255(proposals[arg1][idx + 5].field_1):
                                                        mem[_4109 + s + t + 160] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    emit ExecuteTransaction(address arg1, uint256 arg2, string arg3, bytes arg4):
                                                                            mem[mem[64] len _4109 + s + t + -mem[64] + 160],
                                                                            address(proposals[arg1][idx + 2].field_0),
        idx = idx + 1
        continue 
    emit ProposalExecuted(arg1);
}



}
