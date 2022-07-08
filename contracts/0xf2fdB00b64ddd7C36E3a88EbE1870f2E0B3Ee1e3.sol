contract main {




// =====================  Runtime code  =====================


address sub_4a6ef5d8Address;
address sub_d73a2d13Address;
uint256 totalSupply;
mapping of struct _stakers;
mapping of uint256 sub_1280f3c7;
mapping of uint256 _balances;

function sub_1280f3c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1280f3c7[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_4a6ef5d8(?) payable {
    return sub_4a6ef5d8Address
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function _stakers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _stakers[arg1].field_0, _stakers[arg1].field_256, _stakers[arg1].field_512
}

function sub_d73a2d13(?) payable {
    return sub_d73a2d13Address
}

function _fallback() payable {
    revert
}

function sub_cdfa533f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _stakers[address(arg1)].field_256 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if block.timestamp < _stakers[address(arg1)].field_512:
        revert with 0, 17
    if block.timestamp - _stakers[address(arg1)].field_512 and 3 * _stakers[address(arg1)].field_256 / 24 * 3600 > -1 / block.timestamp - _stakers[address(arg1)].field_512:
        revert with 0, 17
    return ((block.timestamp * 3 * _stakers[address(arg1)].field_256 / 24 * 3600) - (_stakers[address(arg1)].field_512 * 3 * _stakers[address(arg1)].field_256 / 24 * 3600))
}

function claimReward() payable {
    if _stakers[address(msg.sender)].field_256 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if block.timestamp < _stakers[address(msg.sender)].field_512:
        revert with 0, 17
    if block.timestamp - _stakers[address(msg.sender)].field_512 and 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600 > -1 / block.timestamp - _stakers[address(msg.sender)].field_512:
        revert with 0, 17
    _stakers[msg.sender].field_0 = _stakers[msg.sender].field_0
    _stakers[msg.sender].field_512 = block.timestamp
    if sub_1280f3c7[msg.sender] > !((block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)):
        revert with 0, 17
    sub_1280f3c7[msg.sender] = sub_1280f3c7[msg.sender] + (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
    require ext_code.size(sub_4a6ef5d8Address)
    call sub_4a6ef5d8Address.0xb1bcb8de with:
         gas gas_remaining wei
        args msg.sender, (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    if _balances[msg.sender] < arg1:
        revert with 0, 17
    _balances[msg.sender] -= arg1
    if _stakers[msg.sender].field_256 < arg1:
        revert with 0, 17
    _stakers[msg.sender].field_256 -= arg1
    if _stakers[address(msg.sender)].field_256 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if block.timestamp < _stakers[address(msg.sender)].field_512:
        revert with 0, 17
    if block.timestamp - _stakers[address(msg.sender)].field_512 and 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600 > -1 / block.timestamp - _stakers[address(msg.sender)].field_512:
        revert with 0, 17
    _stakers[msg.sender].field_0 = _stakers[msg.sender].field_0
    _stakers[msg.sender].field_512 = block.timestamp
    if sub_1280f3c7[msg.sender] > !((block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)):
        revert with 0, 17
    sub_1280f3c7[msg.sender] = sub_1280f3c7[msg.sender] + (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
    require ext_code.size(sub_4a6ef5d8Address)
    call sub_4a6ef5d8Address.0xb1bcb8de with:
         gas gas_remaining wei
        args msg.sender, (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and 15 > -1 / arg1:
        revert with 0, 17
    call sub_d73a2d13Address.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, 15 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 85 > -1 / arg1:
        revert with 0, 17
    call sub_d73a2d13Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 85 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if not _balances[msg.sender]:
        _balances[msg.sender] = arg1
        _stakers[msg.sender].field_0 = msg.sender
        _stakers[msg.sender].field_256 = arg1
        _stakers[msg.sender].field_512 = block.timestamp
        call sub_d73a2d13Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 > !_balances[msg.sender]:
            revert with 0, 17
        _balances[msg.sender] += arg1
        if _stakers[address(msg.sender)].field_256 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        if block.timestamp < _stakers[address(msg.sender)].field_512:
            revert with 0, 17
        if block.timestamp - _stakers[address(msg.sender)].field_512 and 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600 > -1 / block.timestamp - _stakers[address(msg.sender)].field_512:
            revert with 0, 17
        _stakers[msg.sender].field_0 = _stakers[msg.sender].field_0
        _stakers[msg.sender].field_512 = block.timestamp
        if sub_1280f3c7[msg.sender] > !((block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)):
            revert with 0, 17
        sub_1280f3c7[msg.sender] = sub_1280f3c7[msg.sender] + (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
        require ext_code.size(sub_4a6ef5d8Address)
        call sub_4a6ef5d8Address.0xb1bcb8de with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600) - (_stakers[address(msg.sender)].field_512 * 3 * _stakers[address(msg.sender)].field_256 / 24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _stakers[msg.sender].field_0 = msg.sender
        _stakers[msg.sender].field_256 = arg1 + _balances[msg.sender]
        _stakers[msg.sender].field_512 = block.timestamp
        call sub_d73a2d13Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
