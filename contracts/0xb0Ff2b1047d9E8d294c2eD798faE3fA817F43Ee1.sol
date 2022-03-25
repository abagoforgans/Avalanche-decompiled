contract main {




// =====================  Runtime code  =====================


#
#  - propose(address[] arg1, uint256[] arg2, string[] arg3, bytes[] arg4, string arg5)
#  - queue(uint256 arg1)
#
const votingPeriod = (72 * 24 * 3600)

const name = 'Pangolin Governor Alpha', 0

const votingDelay = (24 * 3600)

const proposalMaxOperations = 10

const proposalThreshold = 1000000 * 10^18

const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', Mask(24, 232, 'ct)') >> 232)

const BALLOT_TYPEHASH = sha3('Ballot(uint256 proposalId,bool s', Mask(56, 200, 'upport)') >> 200)


address timelockAddress;
uint256 stor0;
array of uint256 stor1;
address guardianAddress;
uint256 proposalCount;
array of struct receipt;
mapping of uint256 latestProposalIds;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return receipt[arg1].field_0, 
           address(receipt[arg1].field_256),
           receipt[arg1].field_512,
           receipt[arg1].field_1792,
           receipt[arg1].field_2048,
           receipt[arg1].field_2304,
           receipt[arg1].field_2560,
           receipt[arg1].field_2816,
           bool(uint8(receipt[arg1].field_3072)),
           bool(uint8(receipt[arg1].field_3080))
}

function latestProposalIds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return latestProposalIds[arg1]
}

function guardian() {
    return guardianAddress
}

function png() {
    return address(stor1.length)
}

function timelock() {
    return address(timelockAddress)
}

function proposalCount() {
    return proposalCount
}

function getReceipt(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(receipt[arg1][13][address(arg2)].field_0)), 
           bool(uint8(receipt[arg1][13][address(arg2)].field_8)),
           Mask(96, 0, receipt[arg1][13][address(arg2)].field_16)
}

function _fallback() payable {
    revert
}

function __abdicate() {
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__abdicate: sender must be gov guardian'
    guardianAddress = 0
}

function __acceptAdmin() {
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__acceptAdmin: sender must be gov guardian'
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).acceptAdmin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __queueSetTimelockPendingAdmin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__queueSetTimelockPendingAdmin: sender must be gov guardian'
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).0x3a66f901 with:
         gas gas_remaining wei
        args address(timelockAddress), 0, 160, 224, arg2, 24, 'setPendingAdmin(address)', 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function state(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_3072):
        return 2
    if block.timestamp <= receipt[arg1].field_1792:
        return 0
    if block.timestamp <= receipt[arg1].field_2048:
        return 1
    if receipt[arg1].field_2560 <= receipt[arg1].field_2816:
        return 3
    if not receipt[arg1].field_512:
        return 4
    if uint8(receipt[arg1].field_3080):
        return 7
    require ext_code.size(address(timelockAddress))
    staticcall address(timelockAddress).0xc1a287e2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if receipt[arg1].field_512 + ext_call.return_data[0] < receipt[arg1].field_512:
        revert with 0, 'addition overflow'
    if block.timestamp < receipt[arg1].field_512 + ext_call.return_data[0]:
        return 5
    return 6
}

function __executeSetTimelockPendingAdmin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__executeSetTimelockPendingAdmin: sender must be gov guardian'
    mem[128] = arg1
    mem[160] = 0x825f38f00000000000000000000000000000000000000000000000000000000
    mem[164] = address(timelockAddress)
    mem[196] = 0
    mem[228] = 160
    mem[324] = 24
    mem[356] = 'setPendingAdmin(address)'
    mem[260] = 224
    mem[388] = 32
    mem[420] = arg1
    mem[292] = arg2
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
         gas gas_remaining wei
        args address(timelockAddress), 0, 160, 224, arg2, 24, 'setPendingAdmin(address)', 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], Mask(224, 0, stor0) <= test266151307()
    require mem[160 len 4], Mask(224, 0, stor0) + 191 < return_data.size + 160
    require mem[mem[160 len 4], Mask(224, 0, stor0) + 160] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[160 len 4], Mask(224, 0, stor0) + 160]) + 192 <= test266151307() and ceil32(mem[mem[160 len 4], Mask(224, 0, stor0) + 160]) + 32 >= 0
    require mem[160 len 4], Mask(224, 0, stor0) + mem[mem[160 len 4], Mask(224, 0, stor0) + 160] + 32 <= return_data.size
}

function castVoteBySig(uint256 arg1, bool arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)'), sha3('Pangolin Governor Alpha'), chainid, this.address), sha3(sha3('Ballot(uint256 proposalId,bool s', 'upport)'), arg1, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'GovernorAlpha::castVoteBySig: invalid signature'
    if proposalCount < arg1:
        revert with 0, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_3072):
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if block.timestamp <= receipt[arg1].field_1792:
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if block.timestamp > receipt[arg1].field_2048:
        if receipt[arg1].field_2560 > receipt[arg1].field_2816:
            if receipt[arg1].field_512:
                if not uint8(receipt[arg1].field_3080):
                    require ext_code.size(address(timelockAddress))
                    staticcall address(timelockAddress).0xc1a287e2 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if receipt[arg1].field_512 + ext_call.return_data[0] < receipt[arg1].field_512:
                        revert with 0, 'addition overflow'
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if not receipt[arg1].field_2304:
        receipt[arg1].field_2304 = block.number - 1
        emit 0xd1e02ccd: arg1, block.number
    if uint8(receipt[arg1][13][address(signer)].field_0):
        revert with 0, 'GovernorAlpha::_castVote: voter already voted'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(signer), receipt[arg1].field_2304
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    if not arg2:
        if receipt[arg1].field_2816 + ext_call.return_data[20 len 12] < receipt[arg1].field_2816:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2816 += ext_call.return_data[20 len 12]
    else:
        if receipt[arg1].field_2560 + ext_call.return_data[20 len 12] < receipt[arg1].field_2560:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2560 += ext_call.return_data[20 len 12]
    uint8(receipt[arg1][13][address(signer)].field_0) = 1
    Mask(248, 0, receipt[arg1][13][address(signer)].field_8) = Mask(248, 0, arg2)
    Mask(96, 0, receipt[arg1][13][address(signer)].field_16) = ext_call.return_data[20 len 12]
    emit VoteCast(address(signer), arg1, arg2, Mask(96, 0, ext_call.return_data[0]));
}

function castVote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_3072):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
    if block.timestamp <= receipt[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
    if block.timestamp > receipt[arg1].field_2048:
        if receipt[arg1].field_2560 <= receipt[arg1].field_2816:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        if not receipt[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        if uint8(receipt[arg1].field_3080):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        require ext_code.size(address(timelockAddress))
        staticcall address(timelockAddress).0xc1a287e2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if receipt[arg1].field_512 + ext_call.return_data[0] < receipt[arg1].field_512:
            revert with 0, 'addition overflow'
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if not receipt[arg1].field_2304:
        receipt[arg1].field_2304 = block.number - 1
        emit 0xd1e02ccd: arg1, block.number
    if uint8(receipt[arg1][13][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voter already voted'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, receipt[arg1].field_2304
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    if not arg2:
        if receipt[arg1].field_2816 + ext_call.return_data[20 len 12] < receipt[arg1].field_2816:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2816 += ext_call.return_data[20 len 12]
    else:
        if receipt[arg1].field_2560 + ext_call.return_data[20 len 12] < receipt[arg1].field_2560:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2560 += ext_call.return_data[20 len 12]
    uint8(receipt[arg1][13][address(msg.sender)].field_0) = 1
    Mask(248, 0, receipt[arg1][13][address(msg.sender)].field_8) = Mask(248, 0, arg2)
    Mask(96, 0, receipt[arg1][13][address(msg.sender)].field_16) = ext_call.return_data[20 len 12]
    emit VoteCast(msg.sender, arg1, arg2, Mask(96, 0, ext_call.return_data[0]));
}

function getActions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[96] = receipt[arg1].field_768
    if not receipt[arg1].field_768:
        mem[(32 * receipt[arg1].field_768) + 128] = receipt[arg1].field_1024
        if not receipt[arg1].field_1024:
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_30] = receipt[arg1][idx + 5].length
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_30 + 32] = receipt[arg1][idx + 5].field_0
                t = _30 + 32
                u = sha3(mem[0])
                while _30 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            _28 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_28] = receipt[arg1].field_1536
            s = _28 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_52] = receipt[arg1][idx + 6].length
                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                mem[_52 + 32] = receipt[arg1][idx + 6].field_0
                t = _52 + 32
                u = sha3(mem[0])
                while _52 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            _55 = mem[64]
            mem[mem[64]] = 128
            _66 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _66:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _66) + 160
            _125 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _66) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _66) + 192 len 32 * _125] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _125]
            mem[mem[64] + 64] = (32 * _66) + (32 * _125) + 192
            _179 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _66) + (32 * _125) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _66) + (32 * _125) + (32 * _179) + 224
            u = mem[64] + (32 * _66) + (32 * _125) + 224
            while idx < _179:
                mem[u] = t + -_55 + -(32 * _66) + -(32 * _125) - 224
                _232 = mem[s]
                _242 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _242:
                    mem[t + v + 32] = mem[_232 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_242) > _242:
                    mem[t + _242 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_242) + 32
                u = u + 32
                continue 
            mem[_55 + 96] = t - _55
            _241 = mem[_28]
            mem[t] = mem[_28]
            idx = 0
            s = _28 + 32
            u = t + (32 * _241) + 32
            v = t + 32
            while idx < _241:
                mem[v] = u + -t - 32
                _285 = mem[s]
                _294 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _294:
                    mem[u + t + 32] = mem[_285 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_294) > _294:
                    mem[u + _294 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_294) + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 4) + 4
            mem[(32 * receipt[arg1].field_768) + 160] = receipt[arg1][4].field_0
            idx = (32 * receipt[arg1].field_768) + 160
            s = 0
            while (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 128 > idx:
                mem[idx + 32] = receipt[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_115] = receipt[arg1][idx + 5].length
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_115 + 32] = receipt[arg1][idx + 5].field_0
                t = _115 + 32
                u = sha3(mem[0])
                while _115 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _115
                s = s + 32
                idx = idx + 1
                continue 
            _113 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_113] = receipt[arg1].field_1536
            s = _113 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_169] = receipt[arg1][idx + 6].length
                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                mem[_169 + 32] = receipt[arg1][idx + 6].field_0
                t = _169 + 32
                u = sha3(mem[0])
                while _169 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            _172 = mem[64]
            mem[mem[64]] = 128
            _183 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _183:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _183) + 160
            _243 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _183) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _183) + 192 len 32 * _243] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _243]
            mem[mem[64] + 64] = (32 * _183) + (32 * _243) + 192
            _295 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _183) + (32 * _243) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _183) + (32 * _243) + (32 * _295) + 224
            u = mem[64] + (32 * _183) + (32 * _243) + 224
            while idx < _295:
                mem[u] = t + -_172 + -(32 * _183) + -(32 * _243) - 224
                _328 = mem[s]
                _332 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _332:
                    mem[t + v + 32] = mem[_328 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_332) > _332:
                    mem[t + _332 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_332) + 32
                u = u + 32
                continue 
            mem[_172 + 96] = t - _172
            _331 = mem[_113]
            mem[t] = mem[_113]
            idx = 0
            s = _113 + 32
            u = t + (32 * _331) + 32
            v = t + 32
            while idx < _331:
                mem[v] = u + -t - 32
                _356 = mem[s]
                _363 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _363:
                    mem[u + t + 32] = mem[_356 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) > _363:
                    mem[u + _363 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_363) + 32
                v = v + 32
                continue 
    else:
        mem[0] = sha3(arg1, 4) + 3
        mem[128] = address(receipt[arg1][3].field_0)
        idx = 128
        s = 0
        while (32 * receipt[arg1].field_768) + 96 > idx:
            mem[idx + 32] = address(receipt[arg1][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * receipt[arg1].field_768) + 128] = receipt[arg1].field_1024
        if not receipt[arg1].field_1024:
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_118] = receipt[arg1][idx + 5].length
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_118 + 32] = receipt[arg1][idx + 5].field_0
                t = _118 + 32
                u = sha3(mem[0])
                while _118 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _118
                s = s + 32
                idx = idx + 1
                continue 
            _116 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_116] = receipt[arg1].field_1536
            s = _116 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_171] = receipt[arg1][idx + 6].length
                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                mem[_171 + 32] = receipt[arg1][idx + 6].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            _173 = mem[64]
            mem[mem[64]] = 128
            _184 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _184:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _184) + 160
            _244 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _184) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _184) + 192 len 32 * _244] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _244]
            mem[mem[64] + 64] = (32 * _184) + (32 * _244) + 192
            _296 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _184) + (32 * _244) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _184) + (32 * _244) + (32 * _296) + 224
            u = mem[64] + (32 * _184) + (32 * _244) + 224
            while idx < _296:
                mem[u] = t + -_173 + -(32 * _184) + -(32 * _244) - 224
                _329 = mem[s]
                _334 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _334:
                    mem[t + v + 32] = mem[_329 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_334) > _334:
                    mem[t + _334 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_334) + 32
                u = u + 32
                continue 
            mem[_173 + 96] = t - _173
            _333 = mem[_116]
            mem[t] = mem[_116]
            idx = 0
            s = _116 + 32
            u = t + (32 * _333) + 32
            v = t + 32
            while idx < _333:
                mem[v] = u + -t - 32
                _358 = mem[s]
                _364 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _364:
                    mem[u + t + 32] = mem[_358 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_364) > _364:
                    mem[u + _364 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_364) + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 4) + 4
            mem[(32 * receipt[arg1].field_768) + 160] = receipt[arg1][4].field_0
            idx = (32 * receipt[arg1].field_768) + 160
            s = 0
            while (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 128 > idx:
                mem[idx + 32] = receipt[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_237] = receipt[arg1][idx + 5].length
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                mem[_237 + 32] = receipt[arg1][idx + 5].field_0
                t = _237 + 32
                u = sha3(mem[0])
                while _237 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _237
                s = s + 32
                idx = idx + 1
                continue 
            _235 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_235] = receipt[arg1].field_1536
            s = _235 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_290] = receipt[arg1][idx + 6].length
                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                mem[_290 + 32] = receipt[arg1][idx + 6].field_0
                t = _290 + 32
                u = sha3(mem[0])
                while _290 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _290
                s = s + 32
                idx = idx + 1
                continue 
            _291 = mem[64]
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
            mem[mem[64] + 32] = (32 * _297) + 160
            _335 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _297) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _297) + 192 len 32 * _335] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _335]
            mem[mem[64] + 64] = (32 * _297) + (32 * _335) + 192
            _365 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _297) + (32 * _335) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _297) + (32 * _335) + (32 * _365) + 224
            u = mem[64] + (32 * _297) + (32 * _335) + 224
            while idx < _365:
                mem[u] = t + -_291 + -(32 * _297) + -(32 * _335) - 224
                _378 = mem[s]
                _380 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _380:
                    mem[t + v + 32] = mem[_378 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_380) > _380:
                    mem[t + _380 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_380) + 32
                u = u + 32
                continue 
            mem[_291 + 96] = t - _291
            _379 = mem[_235]
            mem[t] = mem[_235]
            idx = 0
            s = _235 + 32
            u = t + (32 * _379) + 32
            v = t + 32
            while idx < _379:
                mem[v] = u + -t - 32
                _386 = mem[s]
                _389 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _389:
                    mem[u + t + 32] = mem[_386 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_389) > _389:
                    mem[u + _389 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_389) + 32
                v = v + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_3072):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    if block.timestamp <= receipt[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    if block.timestamp <= receipt[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    if receipt[arg1].field_2560 <= receipt[arg1].field_2816:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    if not receipt[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    if uint8(receipt[arg1].field_3080):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::execute: proposal can only be executed if it is queued'
    require ext_code.size(address(timelockAddress))
    staticcall address(timelockAddress).0xc1a287e2 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if receipt[arg1].field_512 + ext_call.return_data[0] < receipt[arg1].field_512:
        revert with 0, 'addition overflow'
    if block.timestamp >= receipt[arg1].field_512 + ext_call.return_data[0]:
        revert with 0, 'GovernorAlpha::execute: proposal can only be executed if it is queued'
    mem[0] = arg1
    mem[32] = 4
    Mask(248, 0, receipt[arg1].field_3080) = 1
    idx = 0
    while idx < receipt[arg1].field_768:
        require idx < receipt[arg1].field_1024
        require idx < receipt[arg1].field_768
        require idx < receipt[arg1].field_1024
        require idx < receipt[arg1].field_1280
        require idx < receipt[arg1].field_1536
        mem[0] = sha3(arg1, 4) + 6
        _99 = mem[64]
        mem[mem[64]] = 0x825f38f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
        mem[mem[64] + 68] = 160
        if not bool(receipt[arg1][idx + 5].field_0):
            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
            mem[mem[64] + 100] = 224
            if not bool(receipt[arg1][idx + 6].field_0):
                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                mem[mem[64] + 132] = receipt[arg1].field_512
                require ext_code.size(address(timelockAddress))
                call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                   value receipt[arg1][idx + 4].field_0 wei
                     gas gas_remaining wei
                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _112 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _116 = mem[_112]
                require mem[_112] <= test266151307()
                require _112 + mem[_112] + 31 < _112 + return_data.size
                _126 = mem[_112 + mem[_112]]
                require mem[_112 + mem[_112]] <= test266151307()
                require _112 + ceil32(return_data.size) + ceil32(mem[_112 + mem[_112]]) + 32 <= test266151307() and ceil32(mem[_112 + mem[_112]]) + 32 >= 0
                mem[64] = _112 + ceil32(return_data.size) + ceil32(mem[_112 + mem[_112]]) + 32
                mem[_112 + ceil32(return_data.size)] = _126
                require _116 + _126 + 32 <= return_data.size
                s = 0
                while s < _126:
                    mem[_112 + ceil32(return_data.size) + s + 32] = mem[_112 + _116 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_126) > _126:
                    mem[_112 + ceil32(return_data.size) + _126 + 32] = 0
            else:
                if bool(receipt[arg1][idx + 6].field_0) != 1:
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _110 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _114 = mem[_110]
                    require mem[_110] <= test266151307()
                    require _110 + mem[_110] + 31 < _110 + return_data.size
                    _122 = mem[_110 + mem[_110]]
                    require mem[_110 + mem[_110]] <= test266151307()
                    require _110 + ceil32(return_data.size) + ceil32(mem[_110 + mem[_110]]) + 32 <= test266151307() and ceil32(mem[_110 + mem[_110]]) + 32 >= 0
                    mem[64] = _110 + ceil32(return_data.size) + ceil32(mem[_110 + mem[_110]]) + 32
                    mem[_110 + ceil32(return_data.size)] = _122
                    require _114 + _122 + 32 <= return_data.size
                    s = 0
                    while s < _122:
                        mem[_110 + ceil32(return_data.size) + s + 32] = mem[_110 + _114 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_122) > _122:
                        mem[_110 + ceil32(return_data.size) + _122 + 32] = 0
                else:
                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                    s = 0
                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                    while s < uint255(receipt[arg1][idx + 6].field_1):
                        mem[mem[64] + s + 260] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _166 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _168 = mem[_166]
                    require mem[_166] <= test266151307()
                    require _166 + mem[_166] + 31 < _166 + return_data.size
                    _172 = mem[_166 + mem[_166]]
                    require mem[_166 + mem[_166]] <= test266151307()
                    require _166 + ceil32(return_data.size) + ceil32(mem[_166 + mem[_166]]) + 32 <= test266151307() and ceil32(mem[_166 + mem[_166]]) + 32 >= 0
                    mem[64] = _166 + ceil32(return_data.size) + ceil32(mem[_166 + mem[_166]]) + 32
                    mem[_166 + ceil32(return_data.size)] = _172
                    require _168 + _172 + 32 <= return_data.size
                    s = 0
                    while s < _172:
                        mem[_166 + ceil32(return_data.size) + s + 32] = mem[_166 + _168 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_172) > _172:
                        mem[_166 + ceil32(return_data.size) + _172 + 32] = 0
        else:
            if bool(receipt[arg1][idx + 5].field_0) != 1:
                mem[mem[64] + 100] = -mem[64] - 4
                if not bool(receipt[arg1][idx + 6].field_0):
                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _111 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _115 = mem[_111]
                    require mem[_111] <= test266151307()
                    require _111 + mem[_111] + 31 < _111 + return_data.size
                    _124 = mem[_111 + mem[_111]]
                    require mem[_111 + mem[_111]] <= test266151307()
                    require _111 + ceil32(return_data.size) + ceil32(mem[_111 + mem[_111]]) + 32 <= test266151307() and ceil32(mem[_111 + mem[_111]]) + 32 >= 0
                    mem[64] = _111 + ceil32(return_data.size) + ceil32(mem[_111 + mem[_111]]) + 32
                    mem[_111 + ceil32(return_data.size)] = _124
                    require _115 + _124 + 32 <= return_data.size
                    s = 0
                    while s < _124:
                        mem[_111 + ceil32(return_data.size) + s + 32] = mem[_111 + _115 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_124) > _124:
                        mem[_111 + ceil32(return_data.size) + _124 + 32] = 0
                else:
                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _109 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _113 = mem[_109]
                        require mem[_109] <= test266151307()
                        require _109 + mem[_109] + 31 < _109 + return_data.size
                        _121 = mem[_109 + mem[_109]]
                        require mem[_109 + mem[_109]] <= test266151307()
                        require _109 + ceil32(return_data.size) + ceil32(mem[_109 + mem[_109]]) + 32 <= test266151307() and ceil32(mem[_109 + mem[_109]]) + 32 >= 0
                        mem[64] = _109 + ceil32(return_data.size) + ceil32(mem[_109 + mem[_109]]) + 32
                        mem[_109 + ceil32(return_data.size)] = _121
                        require _113 + _121 + 32 <= return_data.size
                        s = 0
                        while s < _121:
                            mem[_109 + ceil32(return_data.size) + s + 32] = mem[_109 + _113 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_121) > _121:
                            mem[_109 + ceil32(return_data.size) + _121 + 32] = 0
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(receipt[arg1][idx + 6].field_1):
                            mem[s + 32] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_99 + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).mem[mem[64] len 4] with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _169 = mem[_167]
                        require mem[_167] <= test266151307()
                        require _167 + mem[_167] + 31 < _167 + return_data.size
                        _174 = mem[_167 + mem[_167]]
                        require mem[_167 + mem[_167]] <= test266151307()
                        require _167 + ceil32(return_data.size) + ceil32(mem[_167 + mem[_167]]) + 32 <= test266151307() and ceil32(mem[_167 + mem[_167]]) + 32 >= 0
                        mem[64] = _167 + ceil32(return_data.size) + ceil32(mem[_167 + mem[_167]]) + 32
                        mem[_167 + ceil32(return_data.size)] = _174
                        require _169 + _174 + 32 <= return_data.size
                        s = 0
                        while s < _174:
                            mem[_167 + ceil32(return_data.size) + s + 32] = mem[_167 + _169 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_174) > _174:
                            mem[_167 + ceil32(return_data.size) + _174 + 32] = 0
            else:
                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                s = 0
                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                while s < uint255(receipt[arg1][idx + 5].field_1):
                    mem[mem[64] + s + 196] = stor[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[mem[64] + 100] = s + 192
                if not bool(receipt[arg1][idx + 6].field_0):
                    mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                    mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _175 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _177 = mem[_175]
                    require mem[_175] <= test266151307()
                    require _175 + mem[_175] + 31 < _175 + return_data.size
                    _182 = mem[_175 + mem[_175]]
                    require mem[_175 + mem[_175]] <= test266151307()
                    require _175 + ceil32(return_data.size) + ceil32(mem[_175 + mem[_175]]) + 32 <= test266151307() and ceil32(mem[_175 + mem[_175]]) + 32 >= 0
                    mem[64] = _175 + ceil32(return_data.size) + ceil32(mem[_175 + mem[_175]]) + 32
                    mem[_175 + ceil32(return_data.size)] = _182
                    require _177 + _182 + 32 <= return_data.size
                    s = 0
                    while s < _182:
                        mem[_175 + ceil32(return_data.size) + s + 32] = mem[_175 + _177 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_182) > _182:
                        mem[_175 + ceil32(return_data.size) + _182 + 32] = 0
                else:
                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _173 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _176 = mem[_173]
                        require mem[_173] <= test266151307()
                        require _173 + mem[_173] + 31 < _173 + return_data.size
                        _181 = mem[_173 + mem[_173]]
                        require mem[_173 + mem[_173]] <= test266151307()
                        require _173 + ceil32(return_data.size) + ceil32(mem[_173 + mem[_173]]) + 32 <= test266151307() and ceil32(mem[_173 + mem[_173]]) + 32 >= 0
                        mem[64] = _173 + ceil32(return_data.size) + ceil32(mem[_173 + mem[_173]]) + 32
                        mem[_173 + ceil32(return_data.size)] = _181
                        require _176 + _181 + 32 <= return_data.size
                        s = 0
                        while s < _181:
                            mem[_173 + ceil32(return_data.size) + s + 32] = mem[_173 + _176 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_181) > _181:
                            mem[_173 + ceil32(return_data.size) + _181 + 32] = 0
                    else:
                        mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                        t = 0
                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                        while t < uint255(receipt[arg1][idx + 6].field_1):
                            mem[mem[64] + s + t + 228] = stor[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _199 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _200 = mem[_199]
                        require mem[_199] <= test266151307()
                        require _199 + mem[_199] + 31 < _199 + return_data.size
                        _201 = mem[_199 + mem[_199]]
                        require mem[_199 + mem[_199]] <= test266151307()
                        require _199 + ceil32(return_data.size) + ceil32(mem[_199 + mem[_199]]) + 32 <= test266151307() and ceil32(mem[_199 + mem[_199]]) + 32 >= 0
                        mem[64] = _199 + ceil32(return_data.size) + ceil32(mem[_199 + mem[_199]]) + 32
                        mem[_199 + ceil32(return_data.size)] = _201
                        require _200 + _201 + 32 <= return_data.size
                        s = 0
                        while s < _201:
                            mem[_199 + ceil32(return_data.size) + s + 32] = mem[_199 + _200 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_201) > _201:
                            mem[_199 + ceil32(return_data.size) + _201 + 32] = 0
        idx = idx + 1
        continue 
    emit ProposalExecuted(arg1);
}

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_3072):
        mem[0] = arg1
        if 1 > block.number:
            revert with 0, 'subtraction underflow'
        mem[100] = address(receipt[arg1].field_256)
        mem[132] = block.number - 1
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(receipt[arg1].field_256), block.number - 1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[20 len 12]
        if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
            revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
        uint8(receipt[arg1].field_3072) = 1
        idx = 0
        while idx < receipt[arg1].field_768:
            require idx < receipt[arg1].field_1024
            require idx < receipt[arg1].field_1280
            require idx < receipt[arg1].field_1536
            mem[0] = sha3(arg1, 4) + 6
            _258 = mem[64]
            mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
            mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
            mem[mem[64] + 68] = 160
            if not bool(receipt[arg1][idx + 5].field_0):
                mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                mem[mem[64] + 100] = 224
                if not bool(receipt[arg1][idx + 6].field_0):
                    mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                    mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).0x591fcdfe with:
                         gas gas_remaining wei
                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                else:
                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                        while s < uint255(receipt[arg1][idx + 6].field_1):
                            mem[mem[64] + s + 260] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
            else:
                if bool(receipt[arg1][idx + 5].field_0) != 1:
                    mem[mem[64] + 100] = -mem[64] - 4
                    if not bool(receipt[arg1][idx + 6].field_0):
                        mem[0] = receipt[arg1][idx + 6].field_1 % 128
                        mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] + 60]
                    else:
                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                mem[s + 32] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_258 + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len s + -mem[64] + 28]
                else:
                    mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                    s = 0
                    t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                    while s < uint255(receipt[arg1][idx + 5].field_1):
                        mem[mem[64] + s + 196] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + 100] = s + 192
                    if not bool(receipt[arg1][idx + 6].field_0):
                        mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                        mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                    else:
                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                            t = 0
                            u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                            while t < uint255(receipt[arg1][idx + 6].field_1):
                                mem[mem[64] + s + t + 228] = stor[u]
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if block.timestamp <= receipt[arg1].field_1792:
            mem[0] = arg1
            if 1 > block.number:
                revert with 0, 'subtraction underflow'
            mem[100] = address(receipt[arg1].field_256)
            mem[132] = block.number - 1
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(receipt[arg1].field_256), block.number - 1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[20 len 12]
            if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
                revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
            uint8(receipt[arg1].field_3072) = 1
            idx = 0
            while idx < receipt[arg1].field_768:
                require idx < receipt[arg1].field_1024
                require idx < receipt[arg1].field_1280
                require idx < receipt[arg1].field_1536
                mem[0] = sha3(arg1, 4) + 6
                _256 = mem[64]
                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                mem[mem[64] + 68] = 160
                if not bool(receipt[arg1][idx + 5].field_0):
                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                    mem[mem[64] + 100] = 224
                    if not bool(receipt[arg1][idx + 6].field_0):
                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    else:
                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                mem[mem[64] + s + 260] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                else:
                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                        mem[mem[64] + 100] = -mem[64] - 4
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] + 60]
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_256 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                    else:
                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                        while s < uint255(receipt[arg1][idx + 5].field_1):
                            mem[mem[64] + s + 196] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + 100] = s + 192
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                            mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                t = 0
                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[mem[64] + s + t + 228] = stor[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if block.timestamp <= receipt[arg1].field_2048:
                mem[0] = arg1
                if 1 > block.number:
                    revert with 0, 'subtraction underflow'
                mem[100] = address(receipt[arg1].field_256)
                mem[132] = block.number - 1
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(receipt[arg1].field_256), block.number - 1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
                    revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                uint8(receipt[arg1].field_3072) = 1
                idx = 0
                while idx < receipt[arg1].field_768:
                    require idx < receipt[arg1].field_1024
                    require idx < receipt[arg1].field_1280
                    require idx < receipt[arg1].field_1536
                    mem[0] = sha3(arg1, 4) + 6
                    _254 = mem[64]
                    mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                    mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                    mem[mem[64] + 68] = 160
                    if not bool(receipt[arg1][idx + 5].field_0):
                        mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                        mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                        mem[mem[64] + 100] = 224
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                            mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[mem[64] + s + 260] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                    else:
                        if bool(receipt[arg1][idx + 5].field_0) != 1:
                            mem[mem[64] + 100] = -mem[64] - 4
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] + 60]
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_254 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len s + -mem[64] + 28]
                        else:
                            mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                            while s < uint255(receipt[arg1][idx + 5].field_1):
                                mem[mem[64] + s + 196] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = s + 192
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    t = 0
                                    u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while t < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[mem[64] + s + t + 228] = stor[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if receipt[arg1].field_2560 <= receipt[arg1].field_2816:
                    mem[0] = arg1
                    if 1 > block.number:
                        revert with 0, 'subtraction underflow'
                    mem[100] = address(receipt[arg1].field_256)
                    mem[132] = block.number - 1
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(receipt[arg1].field_256), block.number - 1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                    if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
                        revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                    uint8(receipt[arg1].field_3072) = 1
                    idx = 0
                    while idx < receipt[arg1].field_768:
                        require idx < receipt[arg1].field_1024
                        require idx < receipt[arg1].field_1280
                        require idx < receipt[arg1].field_1536
                        mem[0] = sha3(arg1, 4) + 6
                        _252 = mem[64]
                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                        mem[mem[64] + 68] = 160
                        if not bool(receipt[arg1][idx + 5].field_0):
                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                            mem[mem[64] + 100] = 224
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[mem[64] + s + 260] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                        else:
                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                mem[mem[64] + 100] = -mem[64] - 4
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[s + 32] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_252 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                            else:
                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                    mem[mem[64] + s + 196] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[mem[64] + 100] = s + 192
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        t = 0
                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[mem[64] + s + t + 228] = stor[u]
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    if not receipt[arg1].field_512:
                        mem[0] = arg1
                        if 1 > block.number:
                            revert with 0, 'subtraction underflow'
                        mem[100] = address(receipt[arg1].field_256)
                        mem[132] = block.number - 1
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(receipt[arg1].field_256), block.number - 1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                        if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
                            revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                        uint8(receipt[arg1].field_3072) = 1
                        idx = 0
                        while idx < receipt[arg1].field_768:
                            require idx < receipt[arg1].field_1024
                            require idx < receipt[arg1].field_1280
                            require idx < receipt[arg1].field_1536
                            mem[0] = sha3(arg1, 4) + 6
                            _250 = mem[64]
                            mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                            mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                            mem[mem[64] + 68] = 160
                            if not bool(receipt[arg1][idx + 5].field_0):
                                mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                mem[mem[64] + 100] = 224
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[mem[64] + s + 260] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                            else:
                                if bool(receipt[arg1][idx + 5].field_0) != 1:
                                    mem[mem[64] + 100] = -mem[64] - 4
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] + 60]
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_250 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len s + -mem[64] + 28]
                                else:
                                    mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                    while s < uint255(receipt[arg1][idx + 5].field_1):
                                        mem[mem[64] + s + 196] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[mem[64] + 100] = s + 192
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while t < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[mem[64] + s + t + 228] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        if uint8(receipt[arg1].field_3080):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'GovernorAlpha::cancel: cannot cancel executed proposal'
                        require ext_code.size(address(timelockAddress))
                        staticcall address(timelockAddress).0xc1a287e2 with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if receipt[arg1].field_512 + ext_call.return_data[0] < receipt[arg1].field_512:
                            revert with 0, 'addition overflow'
                        mem[0] = arg1
                        if 1 > block.number:
                            revert with 0, 'subtraction underflow'
                        mem[ceil32(return_data.size) + 100] = address(receipt[arg1].field_256)
                        mem[ceil32(return_data.size) + 132] = block.number - 1
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).getPriorVotes(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(receipt[arg1].field_256), block.number - 1
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                        if ext_call.return_data[20 len 12] >= 1000000 * 10^18:
                            revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                        uint8(receipt[arg1].field_3072) = 1
                        if block.timestamp < receipt[arg1].field_512 + ext_call.return_data[0]:
                            idx = 0
                            while idx < receipt[arg1].field_768:
                                require idx < receipt[arg1].field_1024
                                require idx < receipt[arg1].field_1280
                                require idx < receipt[arg1].field_1536
                                mem[0] = sha3(arg1, 4) + 6
                                _246 = mem[64]
                                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                mem[mem[64] + 68] = 160
                                if not bool(receipt[arg1][idx + 5].field_0):
                                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                    mem[mem[64] + 100] = 224
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[mem[64] + s + 260] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                else:
                                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                                        mem[mem[64] + 100] = -mem[64] - 4
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] + 60]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_246 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                                    else:
                                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                        while s < uint255(receipt[arg1][idx + 5].field_1):
                                            mem[mem[64] + s + 196] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[mem[64] + 100] = s + 192
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[mem[64] + s + t + 228] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            idx = 0
                            while idx < receipt[arg1].field_768:
                                require idx < receipt[arg1].field_1024
                                require idx < receipt[arg1].field_1280
                                require idx < receipt[arg1].field_1536
                                mem[0] = sha3(arg1, 4) + 6
                                _248 = mem[64]
                                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                mem[mem[64] + 68] = 160
                                if not bool(receipt[arg1][idx + 5].field_0):
                                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                    mem[mem[64] + 100] = 224
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[mem[64] + s + 260] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                else:
                                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                                        mem[mem[64] + 100] = -mem[64] - 4
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] + 60]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_248 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                                    else:
                                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                        while s < uint255(receipt[arg1][idx + 5].field_1):
                                            mem[mem[64] + s + 196] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[mem[64] + 100] = s + 192
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[mem[64] + s + t + 228] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    emit ProposalCanceled(arg1);
}



}
