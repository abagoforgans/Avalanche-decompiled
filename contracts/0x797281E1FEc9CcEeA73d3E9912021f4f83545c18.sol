contract main {




// =====================  Runtime code  =====================


const sub_9dcee9a4(?) = 95 * 10^16


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
mapping of uint256 allowance;
mapping of uint256 stor152;
mapping of uint256 sub_0941cb3d;
address stor154;
address stor155;
address stor156;
address stor157;
address sub_e3fcd8d1Address;
uint256 stor5DF0;

function sub_0941cb3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0941cb3d[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e3fcd8d1(?) {
    return address(sub_e3fcd8d1Address)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance spender cannot be a zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function totalSupply() {
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalBorrowed() {
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(arg1)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getBorrowed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(arg1)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_fc68f661(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The borrowers registry cannot set to a null address'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Must be a contract'
    stor155 = address(arg1)
    emit 0x4dce7d07: block.timestamp, address(arg1)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance spender cannot be a zero address'
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance spender cannot be a zero address'
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Current allowance is smaller than the subtractedValue'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_429c9a5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        if ext_code.size(address(arg1)) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set nftAddress to a non-contract instance'
        mem[164 len 64] = unknown_0x70a08231(?????), msg.sender, mem[164 len 28]
        call address(arg1).mem[164 len 4] with:
             gas gas_remaining wei
            args mem[168]
        if not ext_call.success:
            revert with 0, 'Contract has to support the ERC721 balanceOf() interface'
        if not return_data.size:
        else:
            if return_data.size <= 0:
                revert with 0, 'Contract has to support the ERC721 balanceOf() interface'
    uint256(stor5DF0) = arg1
}

function getDepositRate() {
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getBorrowingRate() {
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_0790ef9a(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(this.address) > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg1 > eth.balance(this.address):
        revert with 0, 'Trying to recover more surplus funds than pool balance'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Trying to recover more funds than current surplus'
    call address(arg2) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
    stor101 = 1
}

function sub_70d4cea0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(address(arg1)) <= 0:
        if address(arg1):
            revert with 0, 'Must be a contract'
        stor154 = address(arg1)
    else:
        stor154 = address(arg1)
        if address(arg1):
            if not stor154:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
            require ext_code.size(stor157)
            staticcall stor157.0x966da889 with:
                    gas gas_remaining wei
                   args sub_0941cb3d[address(this.address)], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor156)
            staticcall stor156.0x966da889 with:
                    gas gas_remaining wei
                   args stor152[address(this.address)], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor154)
            staticcall stor154.0x7cd08331 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor156)
            call stor156.setRate(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor157)
            staticcall stor157.0x966da889 with:
                    gas gas_remaining wei
                   args sub_0941cb3d[address(this.address)], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor156)
            staticcall stor156.0x966da889 with:
                    gas gas_remaining wei
                   args stor152[address(this.address)], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor154)
            staticcall stor154.0xdf841eec with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor157)
            call stor157.setRate(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot transfer to the zero address'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot transfer to the pool address'
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(msg.sender)]:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(msg.sender)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(msg.sender)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(msg.sender)]
    emit Transfer((ext_call.return_data[0] - stor152[address(msg.sender)]), 0, msg.sender);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(msg.sender)], block.timestamp, msg.sender);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor152[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    stor152[address(msg.sender)] -= arg2
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(arg1)], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(arg1)]:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(arg1)] > -ext_call.return_data[0] + stor152[address(arg1)] - 1:
        revert with 'NH{q', 17
    stor152[address(arg1)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(arg1)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(arg1)]
    emit Transfer((ext_call.return_data[0] - stor152[address(arg1)]), 0, arg1);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(arg1)], block.timestamp, arg1);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor152[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    stor152[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Must be a contract'
    stor155 = arg2
    stor154 = arg1
    stor156 = arg3
    stor157 = arg4
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
    if not stor154:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    call stor156.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    call stor157.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not enough tokens allowed to transfer required amount'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot transfer to the zero address'
    if arg2 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot transfer to the pool address'
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(msg.sender)]:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(msg.sender)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(msg.sender)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(msg.sender)]
    emit Transfer((ext_call.return_data[0] - stor152[address(msg.sender)]), 0, msg.sender);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(msg.sender)], block.timestamp, msg.sender);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor152[address(arg1)] < arg3:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    if stor152[address(arg1)] < arg3:
        revert with 'NH{q', 17
    stor152[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(arg2)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(arg2)]:
        revert with 'NH{q', 17
    if not arg2:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(arg2)] > -ext_call.return_data[0] + stor152[address(arg2)] - 1:
        revert with 'NH{q', 17
    stor152[address(arg2)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(arg2)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(arg2)]
    emit Transfer((ext_call.return_data[0] - stor152[address(arg2)]), 0, arg2);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(arg2)], block.timestamp, arg2);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor152[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    stor152[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function repay() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_0941cb3d[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_0941cb3d[address(msg.sender)] = ext_call.return_data[0]
    if sub_0941cb3d[address(this.address)] > -ext_call.return_data[0] + sub_0941cb3d[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    sub_0941cb3d[address(this.address)] = sub_0941cb3d[address(this.address)] + ext_call.return_data[0] - sub_0941cb3d[address(msg.sender)]
    require ext_code.size(stor157)
    call stor157.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    call stor157.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0941cb3d[address(msg.sender)] < msg.value:
        revert with 0, 'You are trying to repay more that was borrowed by a user'
    if sub_0941cb3d[address(msg.sender)] < msg.value:
        revert with 'NH{q', 17
    sub_0941cb3d[address(msg.sender)] -= msg.value
    if sub_0941cb3d[address(this.address)] < msg.value:
        revert with 'NH{q', 17
    sub_0941cb3d[address(this.address)] -= msg.value
    if not stor154:
        revert with 0, 'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    call stor156.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    call stor157.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Repayment(msg.value, block.timestamp, msg.sender);
    stor101 = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is not enough available funds to withdraw'
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(msg.sender)]:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(msg.sender)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(msg.sender)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(msg.sender)]
    emit Transfer((ext_call.return_data[0] - stor152[address(msg.sender)]), 0, msg.sender);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(msg.sender)], block.timestamp, msg.sender);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor152[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds user balance'
    if stor152[address(this.address)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds current pool indexed balance'
    stor152[address(msg.sender)] -= arg1
    stor152[address(this.address)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
    if not stor154:
        revert with 0, 'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    call stor156.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    call stor157.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(arg1, block.timestamp, msg.sender);
    stor101 = 1
}

function deposit() payable {
    if address(sub_e3fcd8d1Address):
        require ext_code.size(address(sub_e3fcd8d1Address))
        staticcall address(sub_e3fcd8d1Address).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Access NFT required'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[address(msg.sender)]:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(msg.sender)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(msg.sender)] = ext_call.return_data[0]
    if stor152[address(this.address)] > -ext_call.return_data[0] + stor152[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] = stor152[address(this.address)] + ext_call.return_data[0] - stor152[address(msg.sender)]
    emit Transfer((ext_call.return_data[0] - stor152[address(msg.sender)]), 0, msg.sender);
    emit InterestCollected(ext_call.return_data[0] - stor152[address(msg.sender)], block.timestamp, msg.sender);
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor156)
    call stor156.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: cannot mint to the zero address'
    if stor152[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    stor152[address(msg.sender)] += msg.value
    if stor152[address(this.address)] > -msg.value - 1:
        revert with 'NH{q', 17
    stor152[address(this.address)] += msg.value
    emit Transfer(msg.value, 0, msg.sender);
    if not stor154:
        revert with 0, 'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    call stor156.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    call stor157.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(msg.value, block.timestamp, msg.sender);
    stor101 = 1
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor155:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Borrowers registry is not configured'
    require ext_code.size(stor155)
    staticcall stor155.canBorrow(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only the accounts authorised by borrowers registry may borrow'
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Cannot borrow from an empty pool'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if eth.balance(this.address) < arg1:
        revert with 0, 'There is not enough funds in the pool to fund the loan'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(msg.sender)], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_0941cb3d[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_0941cb3d[address(msg.sender)] = ext_call.return_data[0]
    if sub_0941cb3d[address(this.address)] > -ext_call.return_data[0] + sub_0941cb3d[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    sub_0941cb3d[address(this.address)] = sub_0941cb3d[address(this.address)] + ext_call.return_data[0] - sub_0941cb3d[address(msg.sender)]
    require ext_code.size(stor157)
    call stor157.updateUser(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    call stor157.updateUser(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0941cb3d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_0941cb3d[address(msg.sender)] += arg1
    if sub_0941cb3d[address(this.address)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_0941cb3d[address(this.address)] += arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
    if not stor154:
        revert with 0, 'Pool is frozen: cannot perform deposit, withdraw, borrow and repay operations'
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0x7cd08331 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    call stor156.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor154)
    staticcall stor154.0xdf841eec with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    call stor157.setRate(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd6b37be1: arg1, block.timestamp, msg.sender
    stor101 = 1
    require ext_code.size(stor156)
    staticcall stor156.0x966da889 with:
            gas gas_remaining wei
           args stor152[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor157)
    staticcall stor157.0x966da889 with:
            gas gas_remaining wei
           args sub_0941cb3d[address(this.address)], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 95 * 10^16:
        revert with 0, 'The pool utilisation cannot be greater than 95%'
}



}
