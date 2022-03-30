contract main {




// =====================  Runtime code  =====================


#
#  - proposals(uint256 arg1)
#  - sub_a48508b8(?)
#
const sub_2e54929c(?) = (720 * 24 * 3600)

const sub_5a1daf73(?) = (720 * 24 * 3600)

const sub_645c7151(?) = 100000 * 10^18

const sub_6dedc06e(?) = (24 * 3600)

const sub_7ba456af(?) = (5000 * 10^18 * 3600)

const sub_8ac56a53(?) = 10000000 * 10^18

const sub_8e19855e(?) = 50000 * 10^18

const sub_ca75960b(?) = (336 * 24 * 3600)

const sub_ea014f48(?) = 30


uint256 stor0;
uint256 sub_b1c360ed;
uint256 executionDelay;
uint256 quorumVotes;
uint256 proposalThreshold;
uint256 proposalCount;
mapping of struct stor6;
mapping of struct stor7;
mapping of struct receipt;
mapping of uint256 sub_68c67143;
address xSNOBAddress;

function quorumVotes() {
    return quorumVotes
}

function receipts(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(receipt[arg1][arg2].field_0), bool(receipt[arg1][arg2].field_8), receipt[arg1][arg2].field_256
}

function sub_68c67143(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_68c67143[arg1]
}

function xSNOB() {
    return xSNOBAddress
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

function proposalCount() {
    return proposalCount
}

function getReceipt(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(receipt[arg1][address(arg2)].field_0), 
           bool(receipt[arg1][address(arg2)].field_8),
           receipt[arg1][address(arg2)].field_256
}

function _fallback() payable {
    revert
}

function setExecutionDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance: insufficient privileges'
    if arg1 < 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setExecutionDelay: TOO_SMALL'
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setExecutionDelay: TOO_LARGE'
    executionDelay = arg1
    emit 0x193d917e: arg1
}

function setQuorumVotes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance: insufficient privileges'
    if arg1 < 100000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setQuorumVotes: TOO_SMALL'
    if arg1 > 5000 * 10^18 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setQuorumVotes: TOO_LARGE'
    quorumVotes = arg1
    emit 0x4d82feec: arg1
}

function sub_38249a49(?) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance: insufficient privileges'
    if arg1 < 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setMinimumVotingPeriod: TOO_SMALL'
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setMinimumVotingPeriod: TOO_LARGE'
    sub_b1c360ed = arg1
    emit MinimumVotingPeriodChanged(arg1);
}

function setProposalThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance: insufficient privileges'
    if arg1 < 50000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setProposalThreshold: TOO_SMALL'
    if arg1 > 10000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::setProposalThreshold: TOO_LARGE'
    proposalThreshold = arg1
    emit 0x553c1e1d: arg1
}

function state(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > proposalCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if block.timestamp <= stor6[arg1].field_1024 + stor6[arg1].field_1280:
        return 0
    if stor6[arg1].field_768:
        return 4
    if stor6[arg1].field_2048 <= stor6[arg1].field_2304:
        return 1
    if stor6[arg1].field_2048 < stor6[arg1].field_1536:
        return 1
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
        revert with 0, 17
    if block.timestamp < stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792:
        return 2
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792 > -1209601:
        revert with 0, 17
    if block.timestamp >= stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792 + (336 * 24 * 3600):
        return 5
    return 3
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > proposalCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if block.timestamp > stor6[arg1].field_1024 + stor6[arg1].field_1280:
        if not stor6[arg1].field_768:
            if stor6[arg1].field_2048 > stor6[arg1].field_2304:
                if stor6[arg1].field_2048 >= stor6[arg1].field_1536:
                    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
                        revert with 0, 17
                    if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
                        revert with 0, 17
                    if block.timestamp >= stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792:
                        if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
                            revert with 0, 17
                        if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
                            revert with 0, 17
                        if stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792 > -1209601:
                            revert with 0, 17
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::vote: voting is closed'
    require ext_code.size(xSNOBAddress)
    staticcall xSNOBAddress.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, stor6[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if receipt[arg1][msg.sender].field_0:
        if not receipt[arg1][msg.sender].field_8:
            if stor6[arg1].field_2304 < receipt[arg1][msg.sender].field_256:
                revert with 0, 17
            stor6[arg1].field_2304 -= receipt[arg1][msg.sender].field_256
        else:
            if stor6[arg1].field_2048 < receipt[arg1][msg.sender].field_256:
                revert with 0, 17
            stor6[arg1].field_2048 -= receipt[arg1][msg.sender].field_256
    if not arg2:
        if stor6[arg1].field_2304 > !ext_call.return_data[0]:
            revert with 0, 17
        stor6[arg1].field_2304 += ext_call.return_data[0]
    else:
        if stor6[arg1].field_2048 > !ext_call.return_data[0]:
            revert with 0, 17
        stor6[arg1].field_2048 += ext_call.return_data[0]
    receipt[arg1][msg.sender].field_0 = 1
    receipt[arg1][msg.sender].field_8 = Mask(248, 0, arg2)
    receipt[arg1][msg.sender].field_256 = ext_call.return_data[0]
    emit 0x6e7cd0c8: arg1, msg.sender, arg2, ext_call.return_data[0]
}

function sub_c6470975(?) {
    require calldata.size - 4 >= 32
    if stor7[arg1].field_512:
        if stor7[arg1].field_512 == uint255(stor7[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_512:
            if stor7[arg1].field_512 == uint255(stor7[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_512):
                if 31 >= uint255(stor7[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor7[arg1].field_520
                else:
                    mem[128] = stor7[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1].field_512 == stor7[arg1].field_513 < 32:
                revert with 0, 34
            if stor7[arg1].field_513:
                if 31 >= stor7[arg1].field_513:
                    mem[128] = 256 * stor7[arg1].field_520
                else:
                    mem[128] = stor7[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7[arg1].field_0, 
               stor7[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor7[arg1].field_512), data=mem[128 len ceil32(uint255(stor7[arg1].field_512) * 0.5)])
    if stor7[arg1].field_512 == stor7[arg1].field_513 < 32:
        revert with 0, 34
    if stor7[arg1].field_512:
        if stor7[arg1].field_512 == uint255(stor7[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_512):
            if 31 >= uint255(stor7[arg1].field_512) * 0.5:
                mem[128] = 256 * stor7[arg1].field_520
            else:
                mem[128] = stor7[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1].field_512 == stor7[arg1].field_513 < 32:
            revert with 0, 34
        if stor7[arg1].field_513:
            if 31 >= stor7[arg1].field_513:
                mem[128] = 256 * stor7[arg1].field_520
            else:
                mem[128] = stor7[arg1][2].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7[arg1].field_0, 
           stor7[arg1].field_256,
           Array(len=stor7[arg1].field_512, data=mem[128 len ceil32(stor7[arg1].field_513)])
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 > proposalCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if block.timestamp <= stor6[arg1].field_1024 + stor6[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_2048 <= stor6[arg1].field_2304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_2048 < stor6[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
        revert with 0, 17
    if block.timestamp < stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1024 > !stor6[arg1].field_1280:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 > !stor6[arg1].field_1792:
        revert with 0, 17
    if stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792 > -1209601:
        revert with 0, 17
    if block.timestamp >= stor6[arg1].field_1024 + stor6[arg1].field_1280 + stor6[arg1].field_1792 + (336 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor7[arg1].field_512:
        if stor7[arg1].field_512 == uint255(stor7[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if not stor7[arg1].field_512:
            mem[96] = Mask(248, 8, stor7[arg1].field_512)
            call stor7[arg1].field_0 with:
               funct stor7[arg1].field_736
               value stor7[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len (uint255(stor7[arg1].field_512) * 0.5) - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Governance::execute: transaction execution reverted.'
                stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                emit ProposalExecuted(arg1, msg.sender);
                stor0 = 1
                return ' '
        else:
            if stor7[arg1].field_512 != 1:
                call stor7[arg1].field_0.mem[96 len 4] with:
                   value stor7[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                    emit ProposalExecuted(arg1, msg.sender);
                    stor0 = 1
                    return ' '
            else:
                idx = 0
                s = 0
                while idx < uint255(stor7[arg1].field_512) * 0.5:
                    mem[idx + 96] = stor7[arg1][s + 2].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor7[arg1].field_0.mem[96 len 4] with:
                   value stor7[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len (uint255(stor7[arg1].field_512) * 0.5) - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                    emit ProposalExecuted(arg1, msg.sender);
                    stor0 = 1
                    return ' '
    else:
        if stor7[arg1].field_512 == stor7[arg1].field_513 < 32:
            revert with 0, 34
        if not stor7[arg1].field_512:
            mem[96] = Mask(248, 8, stor7[arg1].field_512)
            call stor7[arg1].field_0 with:
               funct stor7[arg1].field_736
               value stor7[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len stor7[arg1].field_513 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Governance::execute: transaction execution reverted.'
                stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                emit ProposalExecuted(arg1, msg.sender);
                stor0 = 1
                return ' '
        else:
            if stor7[arg1].field_512 != 1:
                call stor7[arg1].field_0.mem[96 len 4] with:
                   value stor7[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                    emit ProposalExecuted(arg1, msg.sender);
                    stor0 = 1
                    return ' '
            else:
                idx = 0
                s = 0
                while idx < stor7[arg1].field_513:
                    mem[idx + 96] = stor7[arg1][s + 2].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor7[arg1].field_0.mem[96 len 4] with:
                   value stor7[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor7[arg1].field_513 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
                    emit ProposalExecuted(arg1, msg.sender);
                    stor0 = 1
                    return ' '
    ('bool', 'returndatasize')
    if not ext_call.success:
        revert with 0, 'Governance::execute: transaction execution reverted.'
    stor6[arg1].field_768 = msg.sender or Mask(96, 160, stor6[arg1].field_768)
    emit ProposalExecuted(arg1, msg.sender);
    stor0 = 1
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
