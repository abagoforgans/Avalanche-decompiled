contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function checkWinninProposalWithReturnValue() payable {
    require ext_code.size(stor1)
    staticcall stor1.winningProposal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return not ext_call.return_data[0]
}

function beforeAll() payable {
    stor0.length++
    stor0[stor0.length] = 'candidate1'
    idx = 0
    s = 0
    t = 5463
    while idx < stor0.length:
        mem[t] = stor0[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[2485 len 5303], 32, stor0.length, mem[5463 len 32 * stor0.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = address(create.new_address)
}

function checkWinningProposal() payable {
    require ext_code.size(stor1)
    call stor1.vote(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.winningProposal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4575d008c09bda3068483b57ca0d1e4d22f74cd9)
    delegate 0x4575d008c09bda3068483b57ca0d1e4d22f74cd9.equal(uint256 arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 96, 50, 'proposal at index 0 should be th', 'e winning proposal'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.winnerName() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4575d008c09bda3068483b57ca0d1e4d22f74cd9)
    delegate 0x4575d008c09bda3068483b57ca0d1e4d22f74cd9.equal(bytes32 arg1, bytes32 arg2, string arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 'candidate1', Array(len=36, data='candidate1 should be the winner ', 'name')
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
}



}
