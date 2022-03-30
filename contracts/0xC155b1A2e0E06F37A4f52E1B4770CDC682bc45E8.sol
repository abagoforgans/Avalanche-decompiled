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
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if block.timestamp <= stor6[arg1].field_1280 + stor6[arg1].field_1536:
        return 0
    if stor6[arg1].field_1024:
        return 4
    if stor6[arg1].field_1792 <= stor6[arg1].field_2048:
        return 1
    if stor6[arg1].field_1792 < quorumVotes:
        return 1
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
        revert with 0, 17
    if block.timestamp < stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay:
        return 2
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay > -1209601:
        revert with 0, 17
    if block.timestamp >= stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay + (336 * 24 * 3600):
        return 5
    return 3
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if block.timestamp > stor6[arg1].field_1280 + stor6[arg1].field_1536:
        if not stor6[arg1].field_1024:
            if stor6[arg1].field_1792 > stor6[arg1].field_2048:
                if stor6[arg1].field_1792 >= quorumVotes:
                    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
                        revert with 0, 17
                    if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
                        revert with 0, 17
                    if block.timestamp >= stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay:
                        if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
                            revert with 0, 17
                        if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
                            revert with 0, 17
                        if stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay > -1209601:
                            revert with 0, 17
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::vote: voting is closed'
    require ext_code.size(xSNOBAddress)
    staticcall xSNOBAddress.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, stor6[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if receipt[stor6[arg1].field_0][msg.sender].field_0:
        if not receipt[stor6[arg1].field_0][msg.sender].field_8:
            if stor6[arg1].field_2048 < receipt[stor6[arg1].field_0][msg.sender].field_256:
                revert with 0, 17
            stor6[arg1].field_2048 -= receipt[stor6[arg1].field_0][msg.sender].field_256
        else:
            if stor6[arg1].field_1792 < receipt[stor6[arg1].field_0][msg.sender].field_256:
                revert with 0, 17
            stor6[arg1].field_1792 -= receipt[stor6[arg1].field_0][msg.sender].field_256
    if not arg2:
        if stor6[arg1].field_2048 > !ext_call.return_data[0]:
            revert with 0, 17
        stor6[arg1].field_2048 += ext_call.return_data[0]
    else:
        if stor6[arg1].field_1792 > !ext_call.return_data[0]:
            revert with 0, 17
        stor6[arg1].field_1792 += ext_call.return_data[0]
    receipt[stor6[arg1].field_0][msg.sender].field_0 = 1
    receipt[stor6[arg1].field_0][msg.sender].field_8 = Mask(248, 0, arg2)
    receipt[stor6[arg1].field_0][msg.sender].field_256 = ext_call.return_data[0]
    emit 0x6e7cd0c8: arg1, msg.sender, arg2, ext_call.return_data[0]
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::state: invalid proposal id'
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if block.timestamp <= stor6[arg1].field_1280 + stor6[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1792 <= stor6[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1792 < quorumVotes:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
        revert with 0, 17
    if block.timestamp < stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_1280 > !stor6[arg1].field_1536:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 > !executionDelay:
        revert with 0, 17
    if stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay > -1209601:
        revert with 0, 17
    if block.timestamp >= stor6[arg1].field_1280 + stor6[arg1].field_1536 + executionDelay + (336 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governance::execute: cannot be executed'
    if stor6[arg1].field_2816:
        if stor6[arg1].field_2816 == uint255(stor6[arg1].field_2816) * 0.5 < 32:
            revert with 0, 34
        if not stor6[arg1].field_2816:
            mem[96] = Mask(248, 8, stor6[arg1].field_2816)
            call stor6[arg1].field_2304 with:
               funct stor6[arg1].field_3040
               value stor6[arg1].field_2560 wei
                 gas gas_remaining wei
                args mem[100 len (uint255(stor6[arg1].field_2816) * 0.5) - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Governance::execute: transaction execution reverted.'
                stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                stor0 = 1
                return ' '
        else:
            if stor6[arg1].field_2816 != 1:
                call stor6[arg1].field_2304.mem[96 len 4] with:
                   value stor6[arg1].field_2560 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                    emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                    stor0 = 1
                    return ' '
            else:
                idx = 0
                s = 0
                while idx < uint255(stor6[arg1].field_2816) * 0.5:
                    mem[idx + 96] = stor6[arg1][s + 11].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor6[arg1].field_2304.mem[96 len 4] with:
                   value stor6[arg1].field_2560 wei
                     gas gas_remaining wei
                    args mem[100 len (uint255(stor6[arg1].field_2816) * 0.5) - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                    emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                    stor0 = 1
                    return ' '
    else:
        if stor6[arg1].field_2816 == stor6[arg1].field_2817 < 32:
            revert with 0, 34
        if not stor6[arg1].field_2816:
            mem[96] = Mask(248, 8, stor6[arg1].field_2816)
            call stor6[arg1].field_2304 with:
               funct stor6[arg1].field_3040
               value stor6[arg1].field_2560 wei
                 gas gas_remaining wei
                args mem[100 len stor6[arg1].field_2817 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Governance::execute: transaction execution reverted.'
                stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                stor0 = 1
                return ' '
        else:
            if stor6[arg1].field_2816 != 1:
                call stor6[arg1].field_2304.mem[96 len 4] with:
                   value stor6[arg1].field_2560 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                    emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                    stor0 = 1
                    return ' '
            else:
                idx = 0
                s = 0
                while idx < stor6[arg1].field_2817:
                    mem[idx + 96] = stor6[arg1][s + 11].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor6[arg1].field_2304.mem[96 len 4] with:
                   value stor6[arg1].field_2560 wei
                     gas gas_remaining wei
                    args mem[100 len stor6[arg1].field_2817 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Governance::execute: transaction execution reverted.'
                    stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
                    emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
                    stor0 = 1
                    return ' '
    ('bool', 'returndatasize')
    if not ext_call.success:
        revert with 0, 'Governance::execute: transaction execution reverted.'
    stor6[arg1].field_1024 = msg.sender or Mask(96, 160, stor6[arg1].field_1024)
    emit ProposalExecuted(stor6[arg1].field_0, msg.sender);
    stor0 = 1
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
