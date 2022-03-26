contract main {




// =====================  Runtime code  =====================


uint256 sub_b1c360ed;
uint256 executionDelay;
uint256 sub_70b7e379;
uint256 quorumVotes;
uint256 proposalThreshold;
address sub_e100a279Address;
uint256 proposalCount;
mapping of struct proposals;
mapping of uint8 stor8;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = proposals[arg1][1].field_0
    idx = 128
    s = 0
    while proposals[arg1][1].length + 96 > idx:
        mem[idx + 32] = proposals[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           Array(len=proposals[arg1][1].length, data=mem[128 len proposals[arg1][1].length]),
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536,
           proposals[arg1].field_1792,
           proposals[arg1].field_2048
}

function quorumVotes() {
    return quorumVotes
}

function sub_70b7e379(?) {
    return sub_70b7e379
}

function sub_8adb17d4(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function executionDelay() {
    return executionDelay
}

function sub_b1c360ed(?) {
    return sub_b1c360ed
}

function proposalThreshold() {
    return proposalThreshold
}

function getVote(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(proposals[arg1][9][address(arg2)].field_8)
}

function proposalCount() {
    return proposalCount
}

function sub_e100a279(?) {
    return sub_e100a279Address
}

function _fallback() payable {
    revert
}

function setProposalThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    proposalThreshold = arg1
}

function sub_af9c42a9(?) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    sub_e100a279Address = arg1
    emit 0x1729f7b5: arg1
}

function addGoverner(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    stor8[address(arg1)] = 1
    emit 0x3d43e0f9: arg1
}

function removeGoverner(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    stor8[address(arg1)] = 0
    emit 0x377b5511: arg1
}

function setQuorumVotes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64476f7665726e616e63653a3a73657451756f72756d566f7465733a2043414e4e4f545f42455f5a4552,
                    mem[206 len 22]
    quorumVotes = arg1
}

function sub_38249a49(?) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    if arg1 < 12 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x4f476f7665726e616e63653a3a7365744d696e696d756d566f74696e67506572696f643a20544f4f5f53484f52,
                    mem[209 len 19]
    sub_b1c360ed = arg1
}

function setExecutionDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    if arg1 < 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64476f7665726e616e63653a3a736574457865637574696f6e44656c61793a20544f4f5f53484f52,
                    mem[204 len 24]
    executionDelay = arg1
}

function setExecutionExpiration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[211 len 17]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x64476f7665726e616e63653a3a736574457865637574696f6e45787069726174696f6e3a2043414e4e4f545f42455f5a4552,
                    mem[214 len 14]
    sub_70b7e379 = arg1
}

function state(uint256 arg1) {
    require calldata.size - 4 >= 32
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[202 len 26]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[202 len 26]
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= proposals[arg1].field_1280 + proposals[arg1].field_1024:
        return 0
    if proposals[arg1].field_768:
        return 4
    if proposals[arg1].field_1536 <= proposals[arg1].field_1792:
        return 1
    if proposals[arg1].field_1536 < quorumVotes:
        return 1
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if executionDelay < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < executionDelay + proposals[arg1].field_1280 + proposals[arg1].field_1024:
        return 2
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if executionDelay < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_70b7e379 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= sub_70b7e379 + executionDelay + proposals[arg1].field_1280 + proposals[arg1].field_1024:
        return 5
    return 3
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_e100a279Address)
    call sub_e100a279Address.0x24bce60c with:
         gas gas_remaining wei
        args msg.sender, proposals[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[202 len 26]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[202 len 26]
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > proposals[arg1].field_1280 + proposals[arg1].field_1024:
        if not proposals[arg1].field_768:
            if proposals[arg1].field_1536 > proposals[arg1].field_1792:
                if proposals[arg1].field_1536 >= quorumVotes:
                    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if executionDelay < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= executionDelay + proposals[arg1].field_1280 + proposals[arg1].field_1024:
                        if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if executionDelay < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_70b7e379 < 0:
                            revert with 0, 'SafeMath: addition overflow'
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e476f7665726e616e63653a3a766f74653a20766f74696e6720697320636c6f7365,
                    mem[198 len 30]
    if proposals[arg1][9][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54476f7665726e616e63653a3a766f74653a20766f74657220616c726561647920766f7465,
                    mem[201 len 27]
    require ext_code.size(sub_e100a279Address)
    staticcall sub_e100a279Address.0xccfbf6e3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if ext_call.return_data[0] + proposals[arg1].field_1792 < proposals[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        proposals[arg1].field_1792 += ext_call.return_data[0]
    else:
        if ext_call.return_data[0] + proposals[arg1].field_1536 < proposals[arg1].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        proposals[arg1].field_1536 += ext_call.return_data[0]
    proposals[arg1][9][msg.sender].field_0 = 1
    proposals[arg1][9][msg.sender].field_8 = Mask(248, 0, arg2)
    proposals[arg1][9][msg.sender].field_256 = 0
    proposals[arg1][9][msg.sender].field_256 = ext_call.return_data[0]
    emit 0xc9b748d6: msg.sender, arg1, arg2, ext_call.return_data[0]
}

function sub_dba82024(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require ext_code.size(sub_e100a279Address)
    call sub_e100a279Address.0x24bce60c with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e100a279Address)
    staticcall sub_e100a279Address.0xccfbf6e3 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= proposalThreshold:
        revert with 0, 
                    32,
                    60,
                    0x4f476f7665726e616e63653a3a70726f706f73653a2070726f706f73657220766f7465732062656c6f772070726f706f73616c207468726573686f6c,
                    mem[ceil32(arg5.length) + 256 len 4]
    if arg2 < sub_b1c360ed:
        revert with 0, 
                    32,
                    44,
                    0x64476f7665726e616e63653a3a70726f706f73653a20766f74696e6720706572696f6420746f6f2073686f72,
                    mem[ceil32(arg5.length) + 240 len 20]
    mem[ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg5.length) + 192] = arg4
    mem[ceil32(arg5.length) + 224] = 96
    mem[ceil32(arg5.length) + 256] = arg5.length
    mem[ceil32(arg5.length) + 288 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        _150 = sha3(mem[ceil32(arg5.length) + 160 len 0, Mask(224, 0, arg5.length + 128)])
        proposalCount++
        proposals[stor6].field_0 = proposalCount
        proposals[stor6][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        proposals[stor6].field_512 = msg.sender
        proposals[stor6].field_768 = 0
        proposals[stor6].field_1024 = 0
        proposals[stor6].field_1024 = block.timestamp
        proposals[stor6].field_1280 = arg2
        proposals[stor6].field_1536 = 0
        proposals[stor6].field_1792 = 0
        proposals[stor6].field_2048 = _150
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg1.length) + 896] = msg.sender
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg1.length) + 928] = proposalCount
        emit NewProposal(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg5.length + ceil32(arg5.length) + arg1.length + 928 len ceil32(arg1.length) + -arg1.length + 32], Array(len=arg1.length, data=arg1[all]));
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + 288] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 320 len arg5.length % 32]
        _155 = sha3(mem[ceil32(arg5.length) + 160 len 0, Mask(224, 0, floor32(arg5.length) + 160)])
        proposalCount++
        proposals[stor6].field_0 = proposalCount
        proposals[stor6][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        proposals[stor6].field_512 = msg.sender
        proposals[stor6].field_768 = 0
        proposals[stor6].field_1024 = 0
        proposals[stor6].field_1024 = block.timestamp
        proposals[stor6].field_1280 = arg2
        proposals[stor6].field_1536 = 0
        proposals[stor6].field_1792 = 0
        proposals[stor6].field_2048 = _155
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg1.length) + 928] = msg.sender
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg1.length) + 960] = proposalCount
        emit NewProposal(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[floor32(arg5.length) + ceil32(arg5.length) + arg1.length + 960 len ceil32(arg1.length) + -arg1.length + 32], Array(len=arg1.length, data=arg1[all]));
}

function execute(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 
                    32,
                    47,
                    0x64476f7665726e616e63653a3a6973476f7665726e65723a20494e53554646494349454e545f5045524d495353494f,
                    mem[ceil32(arg4.length) + 243 len 17]
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = arg3
    mem[ceil32(arg4.length) + 224] = 96
    mem[ceil32(arg4.length) + 256] = arg4.length
    mem[ceil32(arg4.length) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(arg4.length) + 128] = arg4.length + 128
    if sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]) != proposals[arg1].field_2048:
        revert with 0, 
                    32,
                    37,
                    0x54476f7665726e616e63653a3a657865637574653a20496e76616c69642070726f706f7361,
                    mem[arg4.length + ceil32(arg4.length) + 393 len 27]
    if proposalCount < arg1:
        revert with 0, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[arg4.length + ceil32(arg4.length) + 394 len 26]
    if arg1 <= 0:
        revert with 0, 
                    32,
                    38,
                    0x4e476f7665726e616e63653a3a73746174653a20696e76616c69642070726f706f73616c2069,
                    mem[arg4.length + ceil32(arg4.length) + 394 len 26]
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= proposals[arg1].field_1280 + proposals[arg1].field_1024:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    if proposals[arg1].field_768:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    if proposals[arg1].field_1536 <= proposals[arg1].field_1792:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    if proposals[arg1].field_1536 < quorumVotes:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if executionDelay < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < executionDelay + proposals[arg1].field_1280 + proposals[arg1].field_1024:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    if proposals[arg1].field_1280 + proposals[arg1].field_1024 < proposals[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if executionDelay < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_70b7e379 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= sub_70b7e379 + executionDelay + proposals[arg1].field_1280 + proposals[arg1].field_1024:
        revert with 0, 
                    32,
                    39,
                    0xfe476f7665726e616e63653a3a657865637574653a2043616e6e6f742062652065786563757465,
                    mem[arg4.length + ceil32(arg4.length) + 395 len 25]
    mem[arg4.length + ceil32(arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 320 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    call arg2.mem[arg4.length + ceil32(arg4.length) + 288 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[arg4.length + ceil32(arg4.length) + 292 len arg4.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x6c476f7665726e616e63653a3a657865637574653a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                        mem[arg4.length + ceil32(arg4.length) + 408 len 12]
        proposals[arg1].field_768 = msg.sender or Mask(96, 160, proposals[arg1].field_768)
        emit 0x7bfd03e4: msg.sender, proposals[arg1].field_0
        return Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with 0, 
                    32,
                    52,
                    0x6c476f7665726e616e63653a3a657865637574653a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 409 len 12]
    proposals[arg1].field_768 = msg.sender or Mask(96, 160, proposals[arg1].field_768)
    emit 0x7bfd03e4: msg.sender, proposals[arg1].field_0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
