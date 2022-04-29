contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_90a120c9;
mapping of uint256 sub_f7ac6d18;
mapping of uint256 sub_cc3c1c10;
address sub_f2f7b37fAddress;
address sub_52255a78Address;

function sub_4a1bc230(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_52255a78(?) payable {
    return sub_52255a78Address
}

function sub_90a120c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_90a120c9[arg1]
}

function sub_cc3c1c10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cc3c1c10[arg1]
}

function sub_f2f7b37f(?) payable {
    return sub_f2f7b37fAddress
}

function sub_f7ac6d18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f7ac6d18[arg1]
}

function _fallback() payable {
    revert
}

function sub_54558e2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_f7ac6d18[address(arg1)]:
        revert with 0, 17
    return (block.timestamp - sub_f7ac6d18[address(arg1)])
}

function sub_76458220(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_f7ac6d18[address(arg1)]:
        revert with 0, 17
    if block.timestamp - sub_f7ac6d18[address(arg1)] and 10^18 > -1 / block.timestamp - sub_f7ac6d18[address(arg1)]:
        revert with 0, 17
    if sub_90a120c9[address(arg1)] and (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(arg1)]) / 24 * 3600 > -1 / sub_90a120c9[address(arg1)]:
        revert with 0, 17
    return (sub_90a120c9[address(arg1)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(arg1)]) / 24 * 3600 / 10^18)
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        revert with 0, 'Nothing to unstake'
    if arg1 > sub_90a120c9[msg.sender]:
        revert with 0, 'Nothing to unstake'
    if block.timestamp < sub_f7ac6d18[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - sub_f7ac6d18[address(msg.sender)] and 10^18 > -1 / block.timestamp - sub_f7ac6d18[address(msg.sender)]:
        revert with 0, 17
    if sub_90a120c9[address(msg.sender)] and (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 > -1 / sub_90a120c9[address(msg.sender)]:
        revert with 0, 17
    sub_f7ac6d18[msg.sender] = block.timestamp
    if sub_90a120c9[msg.sender] < arg1:
        revert with 0, 17
    sub_90a120c9[msg.sender] -= arg1
    require ext_code.size(sub_f2f7b37fAddress)
    call sub_f2f7b37fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_cc3c1c10[msg.sender] > !(sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18):
        revert with 0, 17
    sub_cc3c1c10[msg.sender] += sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18
    if not sub_90a120c9[msg.sender]:
        stor0[msg.sender] = 0
    emit 0x83f0cba6: arg1, msg.sender
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need adequate amount of tokens for staking'
    require ext_code.size(sub_f2f7b37fAddress)
    staticcall sub_f2f7b37fAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Need adequate amount of tokens for staking'
    if 1 == bool(stor0[msg.sender]):
        if block.timestamp < sub_f7ac6d18[address(msg.sender)]:
            revert with 0, 17
        if block.timestamp - sub_f7ac6d18[address(msg.sender)] and 10^18 > -1 / block.timestamp - sub_f7ac6d18[address(msg.sender)]:
            revert with 0, 17
        if sub_90a120c9[address(msg.sender)] and (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 > -1 / sub_90a120c9[address(msg.sender)]:
            revert with 0, 17
        if sub_cc3c1c10[msg.sender] > !(sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18):
            revert with 0, 17
        sub_cc3c1c10[msg.sender] += sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18
    require ext_code.size(sub_f2f7b37fAddress)
    call sub_f2f7b37fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_90a120c9[msg.sender] > !arg1:
        revert with 0, 17
    sub_90a120c9[msg.sender] += arg1
    sub_f7ac6d18[msg.sender] = block.timestamp
    stor0[msg.sender] = 1
    emit 0xd13e9121: arg1, msg.sender
}

function cashout() payable {
    if block.timestamp < sub_f7ac6d18[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - sub_f7ac6d18[address(msg.sender)] and 10^18 > -1 / block.timestamp - sub_f7ac6d18[address(msg.sender)]:
        revert with 0, 17
    if sub_90a120c9[address(msg.sender)] and (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 > -1 / sub_90a120c9[address(msg.sender)]:
        revert with 0, 17
    if sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18 <= 0:
        if not sub_cc3c1c10[msg.sender]:
            revert with 0, 'Balance too low!'
    if not sub_cc3c1c10[msg.sender]:
        sub_f7ac6d18[msg.sender] = block.timestamp
        require ext_code.size(sub_52255a78Address)
        call sub_52255a78Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x17e28863: (sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18), msg.sender
    else:
        sub_cc3c1c10[msg.sender] = 0
        if sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18 > !sub_cc3c1c10[msg.sender]:
            revert with 0, 17
        sub_f7ac6d18[msg.sender] = block.timestamp
        require ext_code.size(sub_52255a78Address)
        call sub_52255a78Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18) + sub_cc3c1c10[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x17e28863: ((sub_90a120c9[address(msg.sender)] * (10^18 * block.timestamp) - (10^18 * sub_f7ac6d18[address(msg.sender)]) / 24 * 3600 / 10^18) + sub_cc3c1c10[msg.sender]), msg.sender
}



}
