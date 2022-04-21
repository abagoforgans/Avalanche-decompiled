contract main {




// =====================  Runtime code  =====================


const sub_439e03e1(?) = 1000 * 10^18

const sub_48ea0c03(?) = 10^18

const MIN_FUND = 10000 * 10^18


address stor0;
address stor1;
uint256 aUTOPerReq;
uint256 aUTOPerExec;
uint256 aUTOPerReferal;
mapping of uint256 minedReqCountOf;
mapping of uint256 minedExecCountOf;
mapping of uint256 minedReferalCountOf;

function getAUTOPerReferal() payable {
    return aUTOPerReferal
}

function getAUTOPerExec() payable {
    return aUTOPerExec
}

function getAUTOPerReq() payable {
    return aUTOPerReq
}

function getMinedReqCountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minedReqCountOf[address(arg1)]
}

function getMinedReferalCountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minedReferalCountOf[address(arg1)]
}

function getMinedExecCountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minedExecCountOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function claimReqMiningReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Shared: uint input is empty'
    require ext_code.size(stor1)
    staticcall stor1.getReqCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReqCountOf[msg.sender]:
        revert with 0, 17
    if arg1 > ext_call.return_data[0] - minedReqCountOf[msg.sender]:
        revert with 0, 'Miner: claim too large'
    if minedReqCountOf[msg.sender] > !arg1:
        revert with 0, 17
    minedReqCountOf[msg.sender] += arg1
    if arg1 and aUTOPerReq > -1 / arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 * aUTOPerReq
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function claimExecMiningReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Shared: uint input is empty'
    require ext_code.size(stor1)
    staticcall stor1.getExecCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedExecCountOf[msg.sender]:
        revert with 0, 17
    if arg1 > ext_call.return_data[0] - minedExecCountOf[msg.sender]:
        revert with 0, 'Miner: claim too large'
    if minedExecCountOf[msg.sender] > !arg1:
        revert with 0, 17
    minedExecCountOf[msg.sender] += arg1
    if arg1 and aUTOPerExec > -1 / arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 * aUTOPerExec
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function claimReferalMiningReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Shared: uint input is empty'
    require ext_code.size(stor1)
    staticcall stor1.getReferalCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReferalCountOf[msg.sender]:
        revert with 0, 17
    if arg1 > ext_call.return_data[0] - minedReferalCountOf[msg.sender]:
        revert with 0, 'Miner: claim too large'
    if minedReferalCountOf[msg.sender] > !arg1:
        revert with 0, 17
    minedReferalCountOf[msg.sender] += arg1
    if arg1 and aUTOPerReferal > -1 / arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 * aUTOPerReferal
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function updateAndFund(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 1000 * 10^18:
        revert with 0, 'Miner: AUTO bal too high'
    if arg1 < 10^18:
        revert with 0, 'Miner: new rates too low'
    if arg2 < 10^18:
        revert with 0, 'Miner: new rates too low'
    if arg3 < 10^18:
        revert with 0, 'Miner: new rates too low'
    if arg4 < 10000 * 10^18:
        revert with 0, 'Miner: funding too low, peasant'
    aUTOPerReq = arg1
    aUTOPerExec = arg2
    aUTOPerReferal = arg3
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit RatesUpdated(arg1, arg2, arg3);
}

function getAvailableMiningRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.getReqCountOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReqCountOf[address(arg1)]:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.getExecCountOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedExecCountOf[address(arg1)]:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.getReferalCountOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReferalCountOf[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedReferalCountOf[address(arg1)] and aUTOPerReferal > -1 / ext_call.return_data[0] - minedReferalCountOf[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedExecCountOf[address(arg1)] and aUTOPerExec > -1 / ext_call.return_data[0] - minedExecCountOf[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedReqCountOf[address(arg1)] and aUTOPerReq > -1 / ext_call.return_data[0] - minedReqCountOf[address(arg1)]:
        revert with 0, 17
    if (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(arg1)] * aUTOPerReq) > !((ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(arg1)] * aUTOPerExec)):
        revert with 0, 17
    if (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(arg1)] * aUTOPerReq) + (ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(arg1)] * aUTOPerExec) > !((ext_call.return_data[0] * aUTOPerReferal) - (minedReferalCountOf[address(arg1)] * aUTOPerReferal)):
        revert with 0, 17
    return ext_call.return_data[0] - minedReqCountOf[address(arg1)], 
           ext_call.return_data[0] - minedExecCountOf[address(arg1)],
           ext_call.return_data[0] - minedReferalCountOf[address(arg1)],
           (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(arg1)] * aUTOPerReq) + (ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(arg1)] * aUTOPerExec) + (ext_call.return_data[0] * aUTOPerReferal) - (minedReferalCountOf[address(arg1)] * aUTOPerReferal)
}

function claimMiningRewards() payable {
    require ext_code.size(stor1)
    staticcall stor1.getReqCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReqCountOf[address(msg.sender)]:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.getExecCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedExecCountOf[address(msg.sender)]:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.getReferalCountOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minedReferalCountOf[address(msg.sender)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedReferalCountOf[address(msg.sender)] and aUTOPerReferal > -1 / ext_call.return_data[0] - minedReferalCountOf[address(msg.sender)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedExecCountOf[address(msg.sender)] and aUTOPerExec > -1 / ext_call.return_data[0] - minedExecCountOf[address(msg.sender)]:
        revert with 0, 17
    if ext_call.return_data[0] - minedReqCountOf[address(msg.sender)] and aUTOPerReq > -1 / ext_call.return_data[0] - minedReqCountOf[address(msg.sender)]:
        revert with 0, 17
    if (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(msg.sender)] * aUTOPerReq) > !((ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(msg.sender)] * aUTOPerExec)):
        revert with 0, 17
    if (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(msg.sender)] * aUTOPerReq) + (ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(msg.sender)] * aUTOPerExec) > !((ext_call.return_data[0] * aUTOPerReferal) - (minedReferalCountOf[address(msg.sender)] * aUTOPerReferal)):
        revert with 0, 17
    if (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(msg.sender)] * aUTOPerReq) + (ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(msg.sender)] * aUTOPerExec) + (ext_call.return_data[0] * aUTOPerReferal) - (minedReferalCountOf[address(msg.sender)] * aUTOPerReferal) <= 0:
        revert with 0, 'Miner: no pending rewards'
    if minedReqCountOf[msg.sender] > !(ext_call.return_data[0] - minedReqCountOf[address(msg.sender)]):
        revert with 0, 17
    minedReqCountOf[msg.sender] = minedReqCountOf[msg.sender] + ext_call.return_data[0] - minedReqCountOf[address(msg.sender)]
    if minedExecCountOf[msg.sender] > !(ext_call.return_data[0] - minedExecCountOf[address(msg.sender)]):
        revert with 0, 17
    minedExecCountOf[msg.sender] = minedExecCountOf[msg.sender] + ext_call.return_data[0] - minedExecCountOf[address(msg.sender)]
    if minedReferalCountOf[msg.sender] > !(ext_call.return_data[0] - minedReferalCountOf[address(msg.sender)]):
        revert with 0, 17
    minedReferalCountOf[msg.sender] = minedReferalCountOf[msg.sender] + ext_call.return_data[0] - minedReferalCountOf[address(msg.sender)]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (ext_call.return_data[0] * aUTOPerReq) - (minedReqCountOf[address(msg.sender)] * aUTOPerReq) + (ext_call.return_data[0] * aUTOPerExec) - (minedExecCountOf[address(msg.sender)] * aUTOPerExec) + (ext_call.return_data[0] * aUTOPerReferal) - (minedReferalCountOf[address(msg.sender)] * aUTOPerReferal)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}



}
