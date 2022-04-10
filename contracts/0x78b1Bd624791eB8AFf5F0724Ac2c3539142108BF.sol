contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 sub_22759098;
mapping of uint256 releaseTime;

function sub_22759098(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_22759098[address(arg1)][address(arg2)]
}

function releaseTime(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return releaseTime[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_a4612208(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2 = arg1
}

function updateOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_db083411(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor1 = address(arg1)
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_22759098[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvaxLock: No tokens available to release'
    require releaseTime[msg.sender][address(arg1)]
    if block.timestamp < releaseTime[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvaxLock: Tokens not yet available for release'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_22759098[msg.sender][address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokensReleased(address(arg1), msg.sender, sub_22759098[msg.sender][address(arg1)]);
    return 1
}

function lockTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvaxLock: release time is before current time'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor2:
        revert with 0, 'AvaxLock: Insufficient funds to lock tokens'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'AvaxLock: Insufficient allowance to lock the required number of tokens'
    if arg3 <= releaseTime[msg.sender][address(arg1)]:
        revert with 0, 'AvaxLock: Cannot tokens for less time than already existing locks'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_22759098[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    sub_22759098[msg.sender][address(arg1)] += arg2
    releaseTime[msg.sender][address(arg1)] = arg3
    require ext_code.size(stor1)
    call stor1.0x4f4c7641 with:
         gas gas_remaining wei
        args msg.sender, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokensLocked(address(arg1), msg.sender, arg3, arg2);
    return 1
}



}
