contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;
address stor1;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
}

function updatePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    stor1 = arg1
    emit UpdatePool(arg1);
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    address(stor0) = arg1
    emit UpdateOwner(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    balanceOf[msg.sender] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath:INVALID_ADD'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    if arg2 > _totalSupply:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    _totalSupply -= arg2
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    balanceOf[address(arg1)] -= arg2
    if arg2 + balanceOf[0] < balanceOf[0]:
        revert with 0, 'SafeMath:INVALID_ADD'
    balanceOf[0] += arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath:INVALID_ADD'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_7c4a285e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    call address(stor0) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe5472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[248 len 12]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe5472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 249 len 12]
    ('bool', 'ext_call.success')
}

function mintTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    if arg2 + _totalSupply < _totalSupply:
        revert with 0, 'SafeMath:INVALID_ADD'
    _totalSupply += arg2
    if arg2 + balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 'SafeMath:INVALID_ADD'
    balanceOf[this.address] += arg2
    if arg2 + allowance[this.address][msg.sender] < allowance[this.address][msg.sender]:
        revert with 0, 'SafeMath:INVALID_ADD'
    allowance[this.address][msg.sender] += arg2
    if arg2 > balanceOf[address(this.address)]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    balanceOf[address(this.address)] -= arg2
    if arg2 > allowance[address(this.address)][msg.sender]:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    allowance[address(this.address)][msg.sender] -= arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath:INVALID_ADD'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    emit Mint(address(arg1), arg2);
}

function emergencyTransferToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[309 len 19]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[309 len 19]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 310 len 19]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            45,
                            0x645472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 310 len 19]
}



}
