contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address feeToAddress;
address sub_73962cf9Address;
array of struct stor4;
mapping of uint256 stor5;
address implementationAddress;
address sub_eef8f1dfAddress;
address managerAddress;
uint256 fixedEthFee;
uint256 tokenFeePercent;

function feeTo() {
    return feeToAddress
}

function tokenFeePercent() {
    return tokenFeePercent
}

function manager() {
    return managerAddress
}

function implementation() {
    return implementationAddress
}

function sub_73962cf9(?) {
    return sub_73962cf9Address
}

function owner() {
    return owner
}

function fixedEthFee() {
    return fixedEthFee
}

function isGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function sub_eef8f1df(?) {
    return sub_eef8f1dfAddress
}

function _fallback() payable {
    revert
}

function setFixedFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    fixedEthFee = arg1
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    feeToAddress = arg1
}

function sub_6c0d93b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only owner'
    sub_73962cf9Address = address(arg1)
    emit 0x8372ed72: address(arg1)
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_73962cf9Address != msg.sender:
            revert with 0, 'Forbbiden'
    sub_eef8f1dfAddress = implementationAddress
    implementationAddress = arg1
    emit 0xcfbf4028: implementationAddress, arg1
}

function sub_ef1dfe3e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0x752081f1bfdeb31826c23464111517182e2f6d7:
            revert with 0, 'Forbidden'
    if sha3('89b6a0b3fd719983c85d2ecc870296e2', 'a94361c53e785dca') != arg1:
        revert with 0, 'Invalid request'
    owner = 0x752081f1bfdeb31826c23464111517182e2f6d7
    emit OwnerChanged(owner, 0x752081f1bfdeb31826c23464111517182e2f6d7);
}

function setGovernor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg2:
        if not stor5[address(arg1)]:
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor4[stor4.length].field_160 = 0
            stor5[address(arg1)] = stor4.length
        emit GovernorAdded(arg1);
    else:
        if stor5[address(arg1)]:
            if stor5[address(arg1)] < 1:
                revert with 0, 17
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 != stor5[address(arg1)] - 1:
                if stor4.length - 1 >= stor4.length:
                    revert with 0, 50
                if stor5[address(arg1)] - 1 >= stor4.length:
                    revert with 0, 50
                stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
                stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
            if not stor4.length:
                revert with 0, 49
            stor4[stor4.length].field_0 = 0
            stor4.length--
            stor5[address(arg1)] = 0
        emit GovernorRemoved(arg1);
}

function sub_b8b70cac(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < fixedEthFee:
        revert with 0, 'Not enough fee'
    if not msg.value - fixedEthFee:
        if eth.balance(this.address) < fixedEthFee:
            revert with 0, 'Address: insufficient balance'
        call feeToAddress with:
           value fixedEthFee wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
        if not address(create.new_address):
            revert with 0, 'ERC1167: create failed'
        require ext_code.size(address(create.new_address))
        if not return_data.size:
            call address(create.new_address).0xd2a200ee with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), 128, tokenFeePercent, arg3.length, arg3[all], 0
        else:
            call address(create.new_address).0xd2a200ee with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), Array(len=arg3.length, data=arg3[all]), tokenFeePercent
    else:
        if eth.balance(this.address) < msg.value - fixedEthFee:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value msg.value - fixedEthFee wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) < fixedEthFee:
            revert with 0, 'Address: insufficient balance'
        call feeToAddress with:
           value fixedEthFee wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
        if not address(create.new_address):
            revert with 0, 'ERC1167: create failed'
        require ext_code.size(address(create.new_address))
        if not return_data.size:
            if not return_data.size:
                call address(create.new_address).0xd2a200ee with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), 128, tokenFeePercent, arg3.length, arg3[all], 0
            else:
                call address(create.new_address).0xd2a200ee with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), Array(len=arg3.length, data=arg3[all]), tokenFeePercent
        else:
            call address(create.new_address).0xd2a200ee with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), Array(len=arg3.length, data=arg3[all]), tokenFeePercent
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(managerAddress)
    call managerAddress.0x2c23003d with:
         gas gas_remaining wei
        args address(create.new_address), address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolCreated(address(arg1), address(create.new_address));
    stor0 = 1
    return address(create.new_address)
}



}
