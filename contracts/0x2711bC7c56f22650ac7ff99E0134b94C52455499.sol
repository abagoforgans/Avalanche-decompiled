contract main {




// =====================  Runtime code  =====================


mapping of address owners;
mapping of address tokens;
mapping of uint256 amounts;
mapping of uint256 dates;
mapping of uint256 delays;
mapping of uint256 totals;
uint256 id;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return owners[arg1]
}

function amounts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amounts[arg1]
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokens[arg1]
}

function totals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totals[arg1]
}

function dates(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dates[arg1]
}

function delays(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delays[arg1]
}

function id() payable {
    return id
}

function _fallback() payable {
    revert
}

function skim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totals[address(arg1)]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totals[address(arg1)] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - totals[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function lock(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg2 <= 0:
        revert with 0, 'amount must be greater than 0'
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    owners[stor6] = msg.sender
    tokens[stor6] = arg1
    dates[stor6] = arg3
    delays[stor6] = arg4
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    emit 0x220a0e55: 0, arg3, arg4, id, arg1, msg.sender
    amounts[stor6] = 0
    if totals[address(arg1)] > -1:
        revert with 'NH{q', 17
    if id == -1:
        revert with 'NH{q', 17
    id++
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < dates[arg1]:
        revert with 0, 'not yet unlockable'
    if not owners[arg1]:
        revert with 0, 'invalid'
    if owners[arg1] != msg.sender:
        revert with 0, 'not lock owner'
    if delays[arg1] <= 0:
        if totals[stor1[arg1]] < amounts[arg1]:
            revert with 'NH{q', 17
        totals[stor1[arg1]] -= amounts[arg1]
        require ext_code.size(tokens[arg1])
        call tokens[arg1].0xa9059cbb with:
             gas gas_remaining wei
            args owners[arg1], amounts[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Unlock(arg1);
        owners[arg1] = 0
        tokens[arg1] = 0
        amounts[arg1] = 0
        dates[arg1] = 0
        delays[arg1] = 0
    else:
        if not dates[arg1]:
            if block.timestamp > -delays[arg1] - 1:
                revert with 'NH{q', 17
            emit 0x79e841d3: (block.timestamp + delays[arg1]), arg1
            dates[arg1] = block.timestamp + delays[arg1]
        else:
            if totals[stor1[arg1]] < amounts[arg1]:
                revert with 'NH{q', 17
            totals[stor1[arg1]] -= amounts[arg1]
            require ext_code.size(tokens[arg1])
            call tokens[arg1].0xa9059cbb with:
                 gas gas_remaining wei
                args owners[arg1], amounts[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Unlock(arg1);
            owners[arg1] = 0
            tokens[arg1] = 0
            amounts[arg1] = 0
            dates[arg1] = 0
            delays[arg1] = 0
}



}
