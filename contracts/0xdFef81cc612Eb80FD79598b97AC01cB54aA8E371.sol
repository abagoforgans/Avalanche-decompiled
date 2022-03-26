contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address proposal;
array of address allProposals;

function allProposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allProposals.length
    return allProposals[arg1]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function getProposal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return proposal[arg1]
}

function allProposalsLength() payable {
    return allProposals.length
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[9574 len 40], mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[9574 len 40], mem[204 len 24]
    stor0[address(arg1)] = 1
}

function sub_4c300076(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if 1 == bool(stor0[msg.sender]):
        mem[ceil32(arg2.length) + 160] = address(arg1)
        mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 180] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 180] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + 128] = arg2.length + 20
        _83 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        if proposal[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'PROPOSAL_EXISTS'
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                        code: code.data[2591 len 6983]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        require arg4 <= 3
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0x113805ed with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), arg4 << 248
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        proposal[_83] = address(create2.new_address)
    else:
        if this.address != msg.sender:
            revert with 0, 32, 40, code.data[9574 len 40], mem[ceil32(arg2.length) + 236 len 24]
        mem[ceil32(arg2.length) + 160] = address(arg1)
        mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 180] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 180] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + 128] = arg2.length + 20
        _90 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
        if proposal[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'PROPOSAL_EXISTS'
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                        code: code.data[2591 len 6983]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        require arg4 <= 3
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0x113805ed with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), address(arg3), arg4 << 248
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        proposal[_90] = address(create2.new_address)
    allProposals.length++
    allProposals[allProposals.length] = address(create2.new_address)
    require arg4 <= 3
    emit ProposalCreated(address(arg1), arg4 << 248, address(create2.new_address));
    return address(create2.new_address)
}



}
