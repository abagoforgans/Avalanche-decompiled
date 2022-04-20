contract main {




// =====================  Runtime code  =====================


#
#  - balancesOf(address arg1)
#  - clone(string arg1, string arg2)
#  - balanceOf(address arg1, address arg2)
#
address owner;
array of address implementations;
address templateAddress;
mapping of address templates;
address stor4;
uint256 cloneCost;

function templates(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return templates[arg1]
}

function template() {
    return templateAddress
}

function implementations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < implementations.length
    return implementations[arg1]
}

function owner() {
    return owner
}

function cloneCost() {
    return cloneCost
}

function implementationsCount() {
    return implementations.length
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

function setCloneCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cloneCost = arg1
    emit NewCloneCost(arg1);
}

function withdrawEther() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw Ether'
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

function addImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if templates[address(arg1)]:
        revert with 0, 'Implementation already exists'
    require ext_code.size(stor4)
    staticcall stor4.0x275e5da5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not ext_call.return_data[0]:
        revert with 0, 'Implementation is not a Contract'
    implementations.length++
    implementations[implementations.length] = arg1
    templates[address(arg1)] = ext_call.return_data[44 len 20]
    emit NewImplementation(arg1, ext_call.return_data[44 len 20], msg.sender);
}

function setDefaultTemplate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not templates[address(arg1)]:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if templates[address(arg1)]:
            revert with 0, 'Implementation already exists'
        require ext_code.size(stor4)
        staticcall stor4.0x275e5da5 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        if not ext_call.return_data[0]:
            revert with 0, 'Implementation is not a Contract'
        implementations.length++
        implementations[implementations.length] = arg1
        templates[address(arg1)] = ext_call.return_data[44 len 20]
        emit NewImplementation(arg1, ext_call.return_data[44 len 20], msg.sender);
    if templates[address(arg1)] != arg1:
        revert with 0, 'Template is a Clone'
    templateAddress = arg1
    emit NewTemplate(arg1, msg.sender);
}



}
