contract main {




// =====================  Runtime code  =====================


const NAME = 'Cobo Safe Factory'

const VERSION = ''


uint8 stor0; offset 160
address owner;
array of address modules;
mapping of address sub_3e17f178;

function sub_2e3a22d3(?) payable {
    return modules.length
}

function sub_3e17f178(?) payable {
    require calldata.size - 4 >= 32
    return sub_3e17f178[arg1]
}

function paused() payable {
    return bool(stor0)
}

function modules(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < modules.length
    return modules[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10328 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function sub_7e1073ff(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_3e17f178[address(arg1)]:
        revert with 0, 'Module already created'
    mem[8064 len 7808] = code.data[2515 len 7808]
    mem[15872 len 5] = code.data[10323 len 5]
    mem[15877] = arg1
    mem[15941] = address(this.address)
    mem[15961] = modules.length
    mem[15909] = 52
    create2 contract with 0 wei
                    salt: sha3(this.address, modules.length)
                    code: mem[8064 len mem[8032]]
    if not address(create2.new_address):
        revert with Error(string arg1), 'Failed to create module'
    modules.length++
    modules[modules.length] = address(create2.new_address)
    sub_3e17f178[address(arg1)] = address(create2.new_address)
    emit 0xed17a0b9: arg1, address(create2.new_address), msg.sender
    return address(create2.new_address)
}



}
