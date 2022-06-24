contract main {




// =====================  Runtime code  =====================


address governanceAddress;

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function sub_dac642fb(?) payable {
    require calldata.size - 4 >= 256
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[228] <= 4294967296
    require cd[228] + 36 <= calldata.size
    require ('cd', 228).length <= 4294967296 and cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0xa3818b3b with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[10842 len 39], mem[203 len 25]
    if not ('cd', 228).length:
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.getVotingParams(bytes32 arg1) with:
                gas gas_remaining wei
               args 'poll'
    else:
        require 0 < ('cd', 228).length
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.getVotingParams(bytes32 arg1) with:
                gas gas_remaining wei
               args ('cd', 228)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.'Bb3`' with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[96]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    code.data[10702 len 54],
                    ext_call.return_data[122 len 10]
    if block.timestamp > cd[164]:
        revert with 0, 'SafeMath: subtraction overflow'
    if cd[164] - block.timestamp < ext_call.return_data[32]:
        revert with 0, 32, 46, code.data[10756 len 46], mem[274 len 18]
    if block.timestamp > cd[164]:
        revert with 0, 'SafeMath: subtraction overflow'
    if cd[164] - block.timestamp > ext_call.return_data[64]:
        revert with 0, 32, 47, code.data[10613 len 47], mem[339 len 17]
    if ('cd', 228).length:
        if cd[100] < ext_call.return_data[128]:
            revert with 0, 32, 40, code.data[10802 len 40], mem[332 len 24]
        if cd[196] < ext_call.return_data[0]:
            revert with 0, 32, 42, code.data[10660 len 42], mem[334 len 22]
    require ext_code.size(governanceAddress)
    call governanceAddress.getNewVoteId() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[8625 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 8625] = 0
    mem[floor32(('cd', 68).length) + 8625] = ('cd', 228).length
    create contract with 0 wei
                    code: code.data[2564 len 8049], governanceAddress, address(cd[4]), ext_call.return_data[0], cd[36], Array(len=floor32(('cd', 68).length) + 352, data=('cd', 68).length, mem[8625 len floor32(('cd', 68).length) + 32], call.data[cd[228] + 36 len floor32(('cd', 228).length)]), cd[100], cd[132], cd[164], cd[196]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(governanceAddress)
    call governanceAddress.newVote(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(create.new_address), bool(('cd', 228).length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
