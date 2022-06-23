contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_64470454(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(address(arg1))
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x64470454(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x481286e6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x481286e6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    return address(sha3(0, this.address, arg1, arg2))
                if uint32(call.func_hash) >> 224 != unknown_0x56299481(?????):
                    require unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return bool(stor0)
                require not msg.value
                require calldata.size - 4 >= 96
                require arg3 == address(arg3)
                return address(sha3(0, address(arg3), arg1, arg2))
            if deployERC1820Implementer(uint256 arg1, bytes32 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if stor0:
                    revert with 0, 'Pausable: paused'
                if eth.balance(this.address) < arg1:
                    revert with 0, 'Create2: insufficient balance'
                create2 contract with ('param', 'arg1') wei
                                salt: arg2
                                code: code.data[3590 len 334]
                if not address(create2.new_address):
                    revert with 0, 'Create2: Failed on deploy'
            else:
                require unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not stor0:
                    revert with 0, 'Pausable: not paused'
                stor0 = 0
                emit Unpaused(msg.sender);
        else:
            if unknown_0x8456cb59(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
            else:
                if unknown_0x64470454(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(arg1) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    selfdestruct(address(arg1))
                if uint32(call.func_hash) >> 224 != unknown_0x66cfa057(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg3 <= test266151307()
                    require arg3 + 35 < calldata.size
                    if arg3.length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                        revert with 'NH{q', 65
                    require arg3 + arg3.length + 36 <= calldata.size
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if eth.balance(this.address) < arg1:
                        revert with 0, 'Create2: insufficient balance'
                    if not arg3.length:
                        revert with 0, 'Create2: bytecode length is zero'
                    create2 contract with ('param', 'arg1') wei
                                    salt: arg2
                                    code: arg3[all]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
}

function computeAddress(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return address(sha3(0, this.address, arg1, arg2))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function computeAddressWithDeployer(bytes32 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    return address(sha3(0, arg3, arg1, arg2))
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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

function deployERC1820Implementer(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: code.data[3590 len 334]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
}

function deploy(uint256 arg1, bytes32 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Create2: insufficient balance'
    if not arg3.length:
        revert with 0, 'Create2: bytecode length is zero'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: arg3[all]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
}



}
