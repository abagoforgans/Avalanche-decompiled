contract main {




// =====================  Runtime code  =====================


#
#  - performTrade(address arg1, uint256 arg2)
#  - computeInboundOutboundComponents(address arg1, uint256 arg2)
#
const TRADE_ADMIN_ROLE = 0x52f6196f210664fa6b81815156d92b849844610aad272b40b65f5732c46c1abb

const APPROVER_ROLE = 0x408a36151f841709116a4e8aca4e0202874f7f54687dcb863b1ea4672dc9d8cf

const DEFAULT_ADMIN_ROLE = 0

const MARKET_MAKER_ROLE = 0x75e5bf8b7de9fd9f24c97951733c6410a040b7a07b543096cb36c6dda365aa8b

const BLOCKER_ROLE = 0x8f2e0057cd5e35397007bcc8f5418f73dd64cc6e4073a0276563f247c3079037


address controllerAddress;
uint256 stor1;
array of struct roleAdmin;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint8 fundState;

function fundState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require fundState[arg1] < 3
    return fundState[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getProposalConstraints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    return proposalConstraints[address(arg1)].field_0, 
           proposalConstraints[address(arg1)].field_256,
           proposalConstraints[address(arg1)].field_512
}

function proposalDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return proposalConstraints[arg1].field_0, 
           proposalConstraints[arg1].field_256,
           proposalConstraints[arg1].field_512,
           proposalConstraints[arg1].field_1280,
           proposalConstraints[arg1].field_1536,
           proposalConstraints[arg1].field_1792
}

function getTradedFundTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    return proposalConstraints[address(arg1)].field_1536, proposalConstraints[address(arg1)].field_1280
}

function getProposalTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    return proposalConstraints[address(arg1)].field_1792
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function moduleConstraints() payable {
    return stor3, stor4, stor5
}

function updateProposalConstraints(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not roleAdmin[0x52f6196f210664fa6b81815156d92b849844610aad272b40b65f5732c46c1abb][1][address(msg.sender)].field_0:
        revert with 0, 'Sender requires permission'
    stor3 = arg1
    stor4 = arg2
    stor5 = arg3
    emit ProposalConstraintsUpdated(arg1, arg2, arg3);
    stor1 = 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function removeModule() payable {
    proposalConstraints[msg.sender].field_0 = 0
    proposalConstraints[msg.sender].field_256 = 0
    proposalConstraints[msg.sender].field_512 = 0
    proposalConstraints[msg.sender].field_768 = 0
    idx = 0
    while 2 * proposalConstraints[msg.sender].field_768 > idx:
        proposalConstraints[msg.sender][idx + 3].field_0 = 0
        proposalConstraints[msg.sender][idx + 3].field_256 = 0
        idx = idx + 2
        continue 
    proposalConstraints[msg.sender].field_1024 = 0
    idx = 0
    while 2 * proposalConstraints[msg.sender].field_1024 > idx:
        proposalConstraints[msg.sender][idx + 4].field_0 = 0
        proposalConstraints[msg.sender][idx + 4].field_256 = 0
        idx = idx + 2
        continue 
    proposalConstraints[msg.sender].field_1280 = 0
    proposalConstraints[msg.sender].field_1536 = 0
    proposalConstraints[msg.sender].field_1792 = 0
    proposalConstraints[msg.sender].field_2048 = 0
    idx = 0
    while proposalConstraints[msg.sender].field_2048 > idx:
        proposalConstraints[msg.sender][idx + 8].field_0 = 0
        idx = idx + 1
        continue 
    proposalConstraints[msg.sender].field_2304 = 0
    idx = 0
    while proposalConstraints[msg.sender].field_2304 > idx:
        proposalConstraints[msg.sender][idx + 9].field_0 = 0
        idx = idx + 1
        continue 
    fundState[msg.sender] = 0
}

function castApprovalVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x408a36151f841709116a4e8aca4e0202874f7f54687dcb863b1ea4672dc9d8cf][1][address(msg.sender)].field_0:
        revert with 0, 'Sender requires permission'
    require fundState[address(arg1)] <= 2
    if fundState[address(arg1)] != 1:
        revert with 0, 'Fund must be in proposal state'
    if proposalConstraints[address(arg1)].field_2048:
        mem[128] = proposalConstraints[address(arg1)][8].field_0
        idx = 128
        s = 0
        while (32 * proposalConstraints[address(arg1)].field_2048) + 96 > idx:
            mem[idx + 32] = proposalConstraints[address(arg1)][s + 8].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_2048:
        require idx < proposalConstraints[address(arg1)].field_2048
        if mem[(32 * idx) + 140 len 20] == msg.sender:
            revert with 0, 'Approver has already voted'
        idx = idx + 1
        continue 
    proposalConstraints[address(arg1)].field_2048++
    stor[proposalConstraints[address(arg1)].field_2048 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = msg.sender or Mask(96, 160, stor[proposalConstraints[address(arg1)].field_2048 + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0)
    emit 0xefa55c17: arg1, proposalConstraints[address(arg1)].field_1792, msg.sender
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x694d75737420626520636f6e74726f6c6c65722d656e61626c656420446f6d616e,
                    mem[197 len 31]
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be pending initialization'
    fundState[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.initializeModule() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function castBlockerVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x8f2e0057cd5e35397007bcc8f5418f73dd64cc6e4073a0276563f247c3079037][1][address(msg.sender)].field_0:
        revert with 0, 'Sender requires permission'
    require fundState[address(arg1)] <= 2
    if fundState[address(arg1)] != 1:
        revert with 0, 'Fund must be in proposal state'
    if proposalConstraints[address(arg1)].field_2304:
        mem[128] = proposalConstraints[address(arg1)][9].field_0
        if (32 * proposalConstraints[address(arg1)].field_2304) + 32 > 64:
            mem[160] = proposalConstraints[address(arg1)][9].field_256
            idx = 160
            s = 1
            while (32 * proposalConstraints[address(arg1)].field_2304) + 96 > idx:
                mem[idx + 32] = proposalConstraints[address(arg1)][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_2304:
        require idx < proposalConstraints[address(arg1)].field_2304
        if mem[(32 * idx) + 140 len 20] == msg.sender:
            revert with 0, 'Blocker has already voted'
        idx = idx + 1
        continue 
    proposalConstraints[address(arg1)].field_2304++
    stor[proposalConstraints[address(arg1)].field_2304 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = msg.sender or Mask(96, 160, stor[proposalConstraints[address(arg1)].field_2304 + ('array', 9, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0)
    emit 0x3efd5e5e: arg1, proposalConstraints[address(arg1)].field_1792, msg.sender
}

function revertToRegularState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require fundState[address(arg1)] <= 2
    if not fundState[address(arg1)]:
        revert with 0, 'Already in regular state'
    fundState[address(arg1)] = 0
}

function getBlockerVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if proposalConstraints[address(arg1)].field_2304:
        mem[128] = proposalConstraints[address(arg1)][9].field_0
        if (32 * proposalConstraints[address(arg1)].field_2304) + 32 > 64:
            mem[160] = proposalConstraints[address(arg1)][9].field_256
            idx = 160
            s = 1
            while (32 * proposalConstraints[address(arg1)].field_2304) + 96 > idx:
                mem[idx + 32] = proposalConstraints[address(arg1)][s + 9].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * proposalConstraints[address(arg1)].field_2304) + 128] = 32
    mem[(32 * proposalConstraints[address(arg1)].field_2304) + 160] = proposalConstraints[address(arg1)].field_2304
    idx = 0
    s = 128
    t = (32 * proposalConstraints[address(arg1)].field_2304) + 192
    while idx < proposalConstraints[address(arg1)].field_2304:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * proposalConstraints[address(arg1)].field_2304) + 128
       len (96 * proposalConstraints[address(arg1)].field_2304) + 64
}

function startTrading(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require fundState[address(arg1)] <= 2
    if fundState[address(arg1)] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fund must be in the proposal state'
    if proposalConstraints[address(arg1)].field_0 + proposalConstraints[address(arg1)].field_1792 < proposalConstraints[address(arg1)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < proposalConstraints[address(arg1)].field_0 + proposalConstraints[address(arg1)].field_1792:
        revert with 0, 'Proposal period not over yet'
    if proposalConstraints[address(arg1)].field_512:
        if proposalConstraints[address(arg1)].field_2304 >= proposalConstraints[address(arg1)].field_512:
            revert with 0, 'Too many blocker votes'
    if proposalConstraints[address(arg1)].field_2048 < proposalConstraints[address(arg1)].field_256:
        revert with 0, 'Not enough approval votes'
    fundState[address(arg1)] = 2
    emit 0x87380951: arg1, proposalConstraints[address(arg1)].field_1792
}

function getApprovalVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[64] = (32 * proposalConstraints[address(arg1)].field_2048) + 128
    mem[96] = proposalConstraints[address(arg1)].field_2048
    if not proposalConstraints[address(arg1)].field_2048:
        mem[(32 * proposalConstraints[address(arg1)].field_2048) + 128] = 32
        mem[(32 * proposalConstraints[address(arg1)].field_2048) + 160] = proposalConstraints[address(arg1)].field_2048
        idx = 0
        s = 128
        t = (32 * proposalConstraints[address(arg1)].field_2048) + 192
        while idx < proposalConstraints[address(arg1)].field_2048:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * proposalConstraints[address(arg1)].field_2048) + 128
           len (96 * proposalConstraints[address(arg1)].field_2048) + 64
    mem[128] = proposalConstraints[address(arg1)][8].field_0
    idx = 128
    s = 0
    while (32 * proposalConstraints[address(arg1)].field_2048) + 96 > idx:
        mem[idx + 32] = proposalConstraints[address(arg1)][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * proposalConstraints[address(arg1)].field_2048) + 128] = 32
    mem[(32 * proposalConstraints[address(arg1)].field_2048) + 160] = proposalConstraints[address(arg1)].field_2048
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < proposalConstraints[address(arg1)].field_2048:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * proposalConstraints[address(arg1)].field_2048) + -mem[64] + 192
}

function getProposedInboundComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require proposalConstraints[address(arg1)].field_768 <= test266151307()
    mem[96] = proposalConstraints[address(arg1)].field_768
    if proposalConstraints[address(arg1)].field_768:
        mem[128 len 32 * proposalConstraints[address(arg1)].field_768] = call.data[calldata.size len 32 * proposalConstraints[address(arg1)].field_768]
    require proposalConstraints[address(arg1)].field_768 <= test266151307()
    mem[(32 * proposalConstraints[address(arg1)].field_768) + 128] = proposalConstraints[address(arg1)].field_768
    mem[64] = (64 * proposalConstraints[address(arg1)].field_768) + 160
    if proposalConstraints[address(arg1)].field_768:
        mem[(32 * proposalConstraints[address(arg1)].field_768) + 160 len 32 * proposalConstraints[address(arg1)].field_768] = call.data[calldata.size len 32 * proposalConstraints[address(arg1)].field_768]
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_768:
        require idx < proposalConstraints[address(arg1)].field_768
        require idx < proposalConstraints[address(arg1)].field_768
        mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
        require idx < proposalConstraints[address(arg1)].field_768
        require idx < mem[(32 * proposalConstraints[address(arg1)].field_768) + 128]
        mem[(32 * idx) + (32 * proposalConstraints[address(arg1)].field_768) + 160] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    mem[(64 * proposalConstraints[address(arg1)].field_768) + 160] = 64
    mem[(64 * proposalConstraints[address(arg1)].field_768) + 224] = proposalConstraints[address(arg1)].field_768
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < proposalConstraints[address(arg1)].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * proposalConstraints[address(arg1)].field_768) + 192] = (32 * proposalConstraints[address(arg1)].field_768) + 96
    mem[(98 * proposalConstraints[address(arg1)].field_768) + 256] = mem[(32 * proposalConstraints[address(arg1)].field_768) + 128]
    mem[(98 * proposalConstraints[address(arg1)].field_768) + 288 len 32 * mem[(32 * proposalConstraints[address(arg1)].field_768) + 128]] = mem[(32 * proposalConstraints[address(arg1)].field_768) + 160 len 32 * mem[(32 * proposalConstraints[address(arg1)].field_768) + 128]]
    return memory
      from mem[64]
       len (98 * proposalConstraints[address(arg1)].field_768) + (32 * mem[(32 * proposalConstraints[address(arg1)].field_768) + 128]) + -mem[64] + 288
}

function getProposedOutboundComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require proposalConstraints[address(arg1)].field_1024 <= test266151307()
    mem[96] = proposalConstraints[address(arg1)].field_1024
    if proposalConstraints[address(arg1)].field_1024:
        mem[128 len 32 * proposalConstraints[address(arg1)].field_1024] = call.data[calldata.size len 32 * proposalConstraints[address(arg1)].field_1024]
    require proposalConstraints[address(arg1)].field_1024 <= test266151307()
    mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128] = proposalConstraints[address(arg1)].field_1024
    mem[64] = (64 * proposalConstraints[address(arg1)].field_1024) + 160
    if proposalConstraints[address(arg1)].field_1024:
        mem[(32 * proposalConstraints[address(arg1)].field_1024) + 160 len 32 * proposalConstraints[address(arg1)].field_1024] = call.data[calldata.size len 32 * proposalConstraints[address(arg1)].field_1024]
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_1024:
        require idx < proposalConstraints[address(arg1)].field_1024
        require idx < proposalConstraints[address(arg1)].field_1024
        mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
        require idx < proposalConstraints[address(arg1)].field_1024
        require idx < mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128]
        mem[(32 * idx) + (32 * proposalConstraints[address(arg1)].field_1024) + 160] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    mem[(64 * proposalConstraints[address(arg1)].field_1024) + 160] = 64
    mem[(64 * proposalConstraints[address(arg1)].field_1024) + 224] = proposalConstraints[address(arg1)].field_1024
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < proposalConstraints[address(arg1)].field_1024:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * proposalConstraints[address(arg1)].field_1024) + 192] = (32 * proposalConstraints[address(arg1)].field_1024) + 96
    mem[(98 * proposalConstraints[address(arg1)].field_1024) + 256] = mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128]
    mem[(98 * proposalConstraints[address(arg1)].field_1024) + 288 len 32 * mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128]] = mem[(32 * proposalConstraints[address(arg1)].field_1024) + 160 len 32 * mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128]]
    return memory
      from mem[64]
       len (98 * proposalConstraints[address(arg1)].field_1024) + (32 * mem[(32 * proposalConstraints[address(arg1)].field_1024) + 128]) + -mem[64] + 288
}

function getProposalDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[96] = 352
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    mem[320] = 96
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 38, 0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e, mem[554 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 38, 0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e, mem[554 len 26]
    mem[0] = arg1
    mem[32] = 6
    mem[704] = proposalConstraints[address(arg1)].field_0
    mem[736] = proposalConstraints[address(arg1)].field_256
    mem[768] = proposalConstraints[address(arg1)].field_512
    mem[448] = 704
    mem[64] = (32 * proposalConstraints[address(arg1)].field_768) + 832
    mem[800] = proposalConstraints[address(arg1)].field_768
    s = 832
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_768:
        mem[0] = sha3(address(arg1), 6) + 3
        _54 = mem[64]
        mem[64] = mem[64] + 64
        mem[_54] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6))) + (2 * idx)].field_0
        mem[_54 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6))) + (2 * idx)].field_256
        mem[s] = _54
        s = s + 32
        idx = idx + 1
        continue 
    mem[480] = 800
    _52 = mem[64]
    mem[64] = mem[64] + (32 * proposalConstraints[address(arg1)].field_1024) + 32
    mem[_52] = proposalConstraints[address(arg1)].field_1024
    s = _52 + 32
    idx = 0
    while idx < proposalConstraints[address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), 6) + 4
        _88 = mem[64]
        mem[64] = mem[64] + 64
        mem[_88] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6))) + (2 * idx)].field_0
        mem[_88 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6))) + (2 * idx)].field_256
        mem[s] = _88
        s = s + 32
        idx = idx + 1
        continue 
    mem[512] = _52
    mem[544] = proposalConstraints[address(arg1)].field_1280
    mem[576] = proposalConstraints[address(arg1)].field_1536
    mem[608] = proposalConstraints[address(arg1)].field_1792
    _86 = mem[64]
    mem[64] = mem[64] + (32 * proposalConstraints[address(arg1)].field_2048) + 32
    mem[_86] = proposalConstraints[address(arg1)].field_2048
    if not proposalConstraints[address(arg1)].field_2048:
        mem[640] = _86
        _89 = mem[64]
        mem[64] = mem[64] + (32 * proposalConstraints[address(arg1)].field_2304) + 32
        mem[_89] = proposalConstraints[address(arg1)].field_2304
        if not proposalConstraints[address(arg1)].field_2304:
            mem[672] = _89
            _92 = mem[64]
            mem[mem[64]] = 32
            _93 = mem[448]
            mem[mem[64] + 32] = mem[mem[448]]
            mem[mem[64] + 64] = mem[_93 + 32]
            mem[mem[64] + 96] = mem[_93 + 64]
            _97 = mem[480]
            mem[mem[64] + 128] = 320
            _98 = mem[_97]
            mem[mem[64] + 352] = mem[_97]
            idx = 0
            s = _97 + 32
            t = mem[64] + 384
            while idx < _98:
                _117 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_117 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _120 = mem[512]
            mem[_92 + 160] = (64 * _98) + 352
            _121 = mem[_120]
            mem[_92 + (64 * _98) + 384] = mem[_120]
            idx = 0
            s = _120 + 32
            t = _92 + (64 * _98) + 416
            while idx < _121:
                _136 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_136 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_92 + 192] = mem[544]
            mem[_92 + 224] = mem[576]
            mem[_92 + 256] = mem[608]
            _144 = mem[640]
            mem[_92 + 288] = (64 * _98) + (64 * _121) + 384
            _147 = mem[_144]
            mem[_92 + (64 * _98) + (64 * _121) + 416] = mem[_144]
            idx = 0
            s = _144 + 32
            t = _92 + (64 * _98) + (64 * _121) + 448
            while idx < _147:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _207 = mem[672]
            mem[_92 + 320] = (64 * _98) + (64 * _121) + (32 * _147) + 416
            _210 = mem[_207]
            mem[_92 + (64 * _98) + (64 * _121) + (32 * _147) + 448] = mem[_207]
            idx = 0
            s = _207 + 32
            t = _92 + (64 * _98) + (64 * _121) + (32 * _147) + 480
            while idx < _210:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _92 + (64 * _98) + (64 * _121) + (32 * _147) + (32 * _210) + -mem[64] + 480
        mem[0] = sha3(address(arg1), 6) + 9
        mem[_89 + 32] = proposalConstraints[address(arg1)][9].field_0
        idx = _89 + 32
        s = 0
        while _89 + (32 * proposalConstraints[address(arg1)].field_2304) > idx:
            mem[idx + 32] = proposalConstraints[address(arg1)][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[672] = _89
        _139 = mem[64]
        mem[mem[64]] = 32
        _145 = mem[448]
        mem[mem[64] + 32] = mem[mem[448]]
        mem[mem[64] + 64] = mem[_145 + 32]
        mem[mem[64] + 96] = mem[_145 + 64]
        _152 = mem[480]
        mem[mem[64] + 128] = 320
        _157 = mem[_152]
        mem[mem[64] + 352] = mem[_152]
        idx = 0
        s = _152 + 32
        t = mem[64] + 384
        while idx < _157:
            _201 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_201 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _208 = mem[512]
        mem[_139 + 160] = (64 * _157) + 352
        _211 = mem[_208]
        mem[_139 + (64 * _157) + 384] = mem[_208]
        idx = 0
        s = _208 + 32
        t = _139 + (64 * _157) + 416
        while idx < _211:
            _242 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_242 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_139 + 192] = mem[544]
        mem[_139 + 224] = mem[576]
        mem[_139 + 256] = mem[608]
        _252 = mem[640]
        mem[_139 + 288] = (64 * _157) + (64 * _211) + 384
        _259 = mem[_252]
        mem[_139 + (64 * _157) + (64 * _211) + 416] = mem[_252]
        idx = 0
        s = _252 + 32
        t = _139 + (64 * _157) + (64 * _211) + 448
        while idx < _259:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _299 = mem[672]
        mem[_139 + 320] = (64 * _157) + (64 * _211) + (32 * _259) + 416
        _302 = mem[_299]
        mem[_139 + (64 * _157) + (64 * _211) + (32 * _259) + 448] = mem[_299]
        idx = 0
        s = _299 + 32
        t = _139 + (64 * _157) + (64 * _211) + (32 * _259) + 480
        while idx < _302:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _139 + (64 * _157) + (64 * _211) + (32 * _259) + (32 * _302) + -mem[64] + 480
    mem[0] = sha3(address(arg1), 6) + 8
    mem[_86 + 32] = proposalConstraints[address(arg1)][8].field_0
    idx = _86 + 32
    s = 0
    while _86 + (32 * proposalConstraints[address(arg1)].field_2048) > idx:
        mem[idx + 32] = proposalConstraints[address(arg1)][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[640] = _86
    _135 = mem[64]
    mem[64] = mem[64] + (32 * proposalConstraints[address(arg1)].field_2304) + 32
    mem[_135] = proposalConstraints[address(arg1)].field_2304
    if not proposalConstraints[address(arg1)].field_2304:
        mem[672] = _135
        _146 = mem[64]
        mem[mem[64]] = 32
        _151 = mem[448]
        mem[mem[64] + 32] = mem[mem[448]]
        mem[mem[64] + 64] = mem[_151 + 32]
        mem[mem[64] + 96] = mem[_151 + 64]
        _158 = mem[480]
        mem[mem[64] + 128] = 320
        _160 = mem[_158]
        mem[mem[64] + 352] = mem[_158]
        idx = 0
        s = _158 + 32
        t = mem[64] + 384
        while idx < _160:
            _204 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_204 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _209 = mem[512]
        mem[_146 + 160] = (64 * _160) + 352
        _212 = mem[_209]
        mem[_146 + (64 * _160) + 384] = mem[_209]
        idx = 0
        s = _209 + 32
        t = _146 + (64 * _160) + 416
        while idx < _212:
            _245 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_245 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_146 + 192] = mem[544]
        mem[_146 + 224] = mem[576]
        mem[_146 + 256] = mem[608]
        _256 = mem[640]
        mem[_146 + 288] = (64 * _160) + (64 * _212) + 384
        _260 = mem[_256]
        mem[_146 + (64 * _160) + (64 * _212) + 416] = mem[_256]
        idx = 0
        s = _256 + 32
        t = _146 + (64 * _160) + (64 * _212) + 448
        while idx < _260:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _300 = mem[672]
        mem[_146 + 320] = (64 * _160) + (64 * _212) + (32 * _260) + 416
        _303 = mem[_300]
        mem[_146 + (64 * _160) + (64 * _212) + (32 * _260) + 448] = mem[_300]
        idx = 0
        s = _300 + 32
        t = _146 + (64 * _160) + (64 * _212) + (32 * _260) + 480
        while idx < _303:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _146 + (64 * _160) + (64 * _212) + (32 * _260) + (32 * _303) + -mem[64] + 480
    mem[0] = sha3(address(arg1), 6) + 9
    mem[_135 + 32] = proposalConstraints[address(arg1)][9].field_0
    idx = _135 + 32
    s = 0
    while _135 + (32 * proposalConstraints[address(arg1)].field_2304) > idx:
        mem[idx + 32] = proposalConstraints[address(arg1)][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[672] = _135
    _248 = mem[64]
    mem[mem[64]] = 32
    _257 = mem[448]
    mem[mem[64] + 32] = mem[mem[448]]
    mem[mem[64] + 64] = mem[_257 + 32]
    mem[mem[64] + 96] = mem[_257 + 64]
    _264 = mem[480]
    mem[mem[64] + 128] = 320
    _267 = mem[_264]
    mem[mem[64] + 352] = mem[_264]
    idx = 0
    s = _264 + 32
    t = mem[64] + 384
    while idx < _267:
        _296 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_296 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _301 = mem[512]
    mem[_248 + 160] = (64 * _267) + 352
    _304 = mem[_301]
    mem[_248 + (64 * _267) + 384] = mem[_301]
    idx = 0
    s = _301 + 32
    t = _248 + (64 * _267) + 416
    while idx < _304:
        _324 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_324 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_248 + 192] = mem[544]
    mem[_248 + 224] = mem[576]
    mem[_248 + 256] = mem[608]
    _330 = mem[640]
    mem[_248 + 288] = (64 * _267) + (64 * _304) + 384
    _333 = mem[_330]
    mem[_248 + (64 * _267) + (64 * _304) + 416] = mem[_330]
    idx = 0
    s = _330 + 32
    t = _248 + (64 * _267) + (64 * _304) + 448
    while idx < _333:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _340 = mem[672]
    mem[_248 + 320] = (64 * _267) + (64 * _304) + (32 * _333) + 416
    _341 = mem[_340]
    mem[_248 + (64 * _267) + (64 * _304) + (32 * _333) + 448] = mem[_340]
    idx = 0
    s = _340 + 32
    t = _248 + (64 * _267) + (64 * _304) + (32 * _333) + 480
    while idx < _341:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _248 + (64 * _267) + (64 * _304) + (32 * _333) + (32 * _341) + -mem[64] + 480
}

function proposeTrade(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address[] arg6, uint256[] arg7, address[] arg8, uint256[] arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require calldata.size - 68 >= 96
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    require test266151307() >= arg7
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    require test266151307() >= arg8
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + (32 * arg8.length) + 36 <= calldata.size
    require test266151307() >= arg9
    require arg9 + 35 < calldata.size
    require arg9.length <= test266151307()
    require arg9 + (32 * arg9.length) + 36 <= calldata.size
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require fundState[address(arg1)] <= 2
    if fundState[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fund must be in the regular state'
    if arg3 < stor3:
        revert with 0, 'minimum delay too short'
    if arg4 < stor4:
        revert with 0, 'minimum approvers too small'
    if arg5 < stor5:
        revert with 0, 'minimum blockers too small'
    if not arg6.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Inbound addresses cannot be empty'
    if not arg8.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Outbound addresses cannot be empty'
    if arg6.length != arg7.length:
        revert with 0, 'Mismatch inbound lenghts'
    if arg9.length != arg8.length:
        revert with 0, 'Mismatch outbound lenghts'
    mem[96] = arg6.length
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    idx = 0
    while idx < arg6.length:
        require idx < arg6.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Null address in inbound componets'
        idx = idx + 1
        continue 
    mem[(32 * arg6.length) + 128] = arg8.length
    mem[(32 * arg6.length) + 160 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg6.length) + (32 * arg8.length) + 160] = 0
    idx = 0
    while idx < arg8.length:
        require idx < arg8.length
        if not mem[(32 * idx) + (32 * arg6.length) + 172 len 20]:
            revert with 0, 'Null address in outbound componets'
        idx = idx + 1
        continue 
    mem[(32 * arg6.length) + (32 * arg8.length) + 160] = arg8.length
    mem[(32 * arg6.length) + (32 * arg8.length) + 192 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg6.length) + (64 * arg8.length) + 192] = arg6.length
    mem[(32 * arg6.length) + (64 * arg8.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg6.length + arg8.length <= test266151307()
    mem[(64 * arg6.length) + (64 * arg8.length) + 224] = arg6.length + arg8.length
    mem[64] = (64 * arg6.length) + (64 * arg8.length) + (32 * arg6.length + arg8.length) + 256
    if not arg6.length + arg8.length:
        idx = 0
        while idx < arg6.length:
            require idx < mem[(32 * arg6.length) + (64 * arg8.length) + 192]
            require idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            mem[(32 * idx) + (64 * arg6.length) + (64 * arg8.length) + 256] = mem[(32 * idx) + (32 * arg6.length) + (64 * arg8.length) + 236 len 20]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg8.length:
            require idx < mem[(32 * arg6.length) + (32 * arg8.length) + 160]
            require arg6.length + idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            mem[(32 * arg6.length + idx) + (64 * arg6.length) + (64 * arg8.length) + 256] = mem[(32 * idx) + (32 * arg6.length) + (32 * arg8.length) + 204 len 20]
            idx = idx + 1
            continue 
        if mem[(64 * arg6.length) + (64 * arg8.length) + 224] <= 0:
            revert with 0, 'A is empty'
        idx = 0
        while idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224] - 1:
            require idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            s = idx + 1
            while s < mem[(64 * arg6.length) + (64 * arg8.length) + 224]:
                require s < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
                if mem[(32 * idx) + (64 * arg6.length) + (64 * arg8.length) + 268 len 20] == mem[(32 * s) + (64 * arg6.length) + (64 * arg8.length) + 268 len 20]:
                    revert with 0, 'Duplicate components are not allowed'
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        if arg2 <= 0:
            revert with 0, 'Max number of traded tokens must be bigger than 0'
        proposalConstraints[address(arg1)].field_1280 = arg2
        proposalConstraints[address(arg1)].field_1536 = 0
        proposalConstraints[address(arg1)].field_1792 = block.timestamp
        proposalConstraints[address(arg1)].field_0 = arg3
        proposalConstraints[address(arg1)].field_256 = arg4
        proposalConstraints[address(arg1)].field_512 = arg5
        proposalConstraints[address(arg1)].field_2048 = 0
        idx = 0
        while proposalConstraints[address(arg1)].field_2048 > idx:
            proposalConstraints[address(arg1)][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_2304 = 0
        idx = 0
        while proposalConstraints[address(arg1)].field_2304 > idx:
            proposalConstraints[address(arg1)][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_768 = 0
        idx = 0
        while 2 * proposalConstraints[address(arg1)].field_768 > idx:
            proposalConstraints[address(arg1)][idx + 3].field_0 = 0
            proposalConstraints[address(arg1)][idx + 3].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < arg6.length:
            mem[0] = arg1
            mem[32] = 6
            _1061 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            mem[_1061] = address(cd[((32 * idx) + arg6 + 36)])
            require idx < arg7.length
            mem[_1061 + 32] = cd[((32 * idx) + arg7 + 36)]
            proposalConstraints[address(arg1)].field_768++
            mem[0] = sha3(address(arg1), 6) + 3
            stor[(2 * proposalConstraints[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = address(cd[((32 * idx) + arg6 + 36)])
            stor[(2 * proposalConstraints[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 = cd[((32 * idx) + arg7 + 36)]
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_1024 = 0
        idx = 0
        while 2 * proposalConstraints[address(arg1)].field_1024 > idx:
            proposalConstraints[address(arg1)][idx + 4].field_0 = 0
            proposalConstraints[address(arg1)][idx + 4].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < arg8.length:
            mem[0] = arg1
            mem[32] = 6
            _1182 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + arg8 + 36)] == address(cd[((32 * idx) + arg8 + 36)])
            mem[_1182] = address(cd[((32 * idx) + arg8 + 36)])
            require idx < arg9.length
            mem[_1182 + 32] = cd[((32 * idx) + arg9 + 36)]
            proposalConstraints[address(arg1)].field_1024++
            mem[0] = sha3(address(arg1), 6) + 4
            stor[(2 * proposalConstraints[address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = address(cd[((32 * idx) + arg8 + 36)])
            stor[(2 * proposalConstraints[address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 = cd[((32 * idx) + arg9 + 36)]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < proposalConstraints[address(arg1)].field_1024:
            mem[32] = 6
            require idx < proposalConstraints[address(arg1)].field_1024
            mem[0] = sha3(address(arg1), 6) + 4
            mem[mem[64] + 4] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            require ext_code.size(arg1)
            staticcall arg1.isComponent(address arg1) with:
                    gas gas_remaining wei
                   args stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1251] == bool(mem[_1251])
            if not mem[_1251]:
                revert with 0, 'Outbound component not in the fund'
            mem[32] = 6
            require idx < proposalConstraints[address(arg1)].field_1024
            mem[0] = sha3(address(arg1), 6) + 4
            mem[mem[64] + 4] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            require ext_code.size(arg1)
            staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                    gas gas_remaining wei
                   args stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1267] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 > mem[_1267]:
                revert with 0, 'Insufficient balance for outbound component'
            mem[0] = arg1
            mem[32] = 6
            idx = idx + 1
            continue 
    else:
        mem[(64 * arg6.length) + (64 * arg8.length) + 256 len 32 * arg6.length + arg8.length] = call.data[calldata.size len 32 * arg6.length + arg8.length]
        idx = 0
        while idx < arg6.length:
            require idx < mem[(32 * arg6.length) + (64 * arg8.length) + 192]
            require idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            mem[(32 * idx) + (64 * arg6.length) + (64 * arg8.length) + 256] = mem[(32 * idx) + (32 * arg6.length) + (64 * arg8.length) + 236 len 20]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg8.length:
            require idx < mem[(32 * arg6.length) + (32 * arg8.length) + 160]
            require arg6.length + idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            mem[(32 * arg6.length + idx) + (64 * arg6.length) + (64 * arg8.length) + 256] = mem[(32 * idx) + (32 * arg6.length) + (32 * arg8.length) + 204 len 20]
            idx = idx + 1
            continue 
        if mem[(64 * arg6.length) + (64 * arg8.length) + 224] <= 0:
            revert with 0, 'A is empty'
        idx = 0
        while idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224] - 1:
            require idx < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
            s = idx + 1
            while s < mem[(64 * arg6.length) + (64 * arg8.length) + 224]:
                require s < mem[(64 * arg6.length) + (64 * arg8.length) + 224]
                if mem[(32 * idx) + (64 * arg6.length) + (64 * arg8.length) + 268 len 20] == mem[(32 * s) + (64 * arg6.length) + (64 * arg8.length) + 268 len 20]:
                    revert with 0, 'Duplicate components are not allowed'
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        if arg2 <= 0:
            revert with 0, 'Max number of traded tokens must be bigger than 0'
        proposalConstraints[address(arg1)].field_1280 = arg2
        proposalConstraints[address(arg1)].field_1536 = 0
        proposalConstraints[address(arg1)].field_1792 = block.timestamp
        proposalConstraints[address(arg1)].field_0 = arg3
        proposalConstraints[address(arg1)].field_256 = arg4
        proposalConstraints[address(arg1)].field_512 = arg5
        proposalConstraints[address(arg1)].field_2048 = 0
        idx = 0
        while proposalConstraints[address(arg1)].field_2048 > idx:
            proposalConstraints[address(arg1)][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_2304 = 0
        idx = 0
        while proposalConstraints[address(arg1)].field_2304 > idx:
            proposalConstraints[address(arg1)][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_768 = 0
        idx = 0
        while 2 * proposalConstraints[address(arg1)].field_768 > idx:
            proposalConstraints[address(arg1)][idx + 3].field_0 = 0
            proposalConstraints[address(arg1)][idx + 3].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < arg6.length:
            mem[0] = arg1
            mem[32] = 6
            _1064 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + arg6 + 36)] == address(cd[((32 * idx) + arg6 + 36)])
            mem[_1064] = address(cd[((32 * idx) + arg6 + 36)])
            require idx < arg7.length
            mem[_1064 + 32] = cd[((32 * idx) + arg7 + 36)]
            proposalConstraints[address(arg1)].field_768++
            mem[0] = sha3(address(arg1), 6) + 3
            stor[(2 * proposalConstraints[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = address(cd[((32 * idx) + arg6 + 36)])
            stor[(2 * proposalConstraints[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 = cd[((32 * idx) + arg7 + 36)]
            idx = idx + 1
            continue 
        proposalConstraints[address(arg1)].field_1024 = 0
        idx = 0
        while 2 * proposalConstraints[address(arg1)].field_1024 > idx:
            proposalConstraints[address(arg1)][idx + 4].field_0 = 0
            proposalConstraints[address(arg1)][idx + 4].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        while idx < arg8.length:
            mem[0] = arg1
            mem[32] = 6
            _1184 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + arg8 + 36)] == address(cd[((32 * idx) + arg8 + 36)])
            mem[_1184] = address(cd[((32 * idx) + arg8 + 36)])
            require idx < arg9.length
            mem[_1184 + 32] = cd[((32 * idx) + arg9 + 36)]
            proposalConstraints[address(arg1)].field_1024++
            mem[0] = sha3(address(arg1), 6) + 4
            stor[(2 * proposalConstraints[address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0 = address(cd[((32 * idx) + arg8 + 36)])
            stor[(2 * proposalConstraints[address(arg1)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 = cd[((32 * idx) + arg9 + 36)]
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 6
        idx = 0
        while idx < proposalConstraints[address(arg1)].field_1024:
            mem[32] = 6
            require idx < proposalConstraints[address(arg1)].field_1024
            mem[0] = sha3(address(arg1), 6) + 4
            mem[mem[64] + 4] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            require ext_code.size(arg1)
            staticcall arg1.isComponent(address arg1) with:
                    gas gas_remaining wei
                   args stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1252] == bool(mem[_1252])
            if not mem[_1252]:
                revert with 0, 'Outbound component not in the fund'
            mem[32] = 6
            require idx < proposalConstraints[address(arg1)].field_1024
            mem[0] = sha3(address(arg1), 6) + 4
            mem[mem[64] + 4] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            require ext_code.size(arg1)
            staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                    gas gas_remaining wei
                   args stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1268] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'proposalConstraints', 6)))].field_256 > mem[_1268]:
                revert with 0, 'Insufficient balance for outbound component'
            mem[0] = arg1
            mem[32] = 6
            idx = idx + 1
            continue 
    fundState[address(arg1)] = 1
    emit 0x780929e6: arg2, arg3, arg4, arg5, arg6.length, arg8.length, arg1, block.timestamp
}



}
