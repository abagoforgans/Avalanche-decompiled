contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 stor2;
mapping of uint8 stor3;

function owner() {
    return owner
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xa7fc7a07(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor3[address(arg1)] = 1
                require ext_code.size(stor1)
                call stor1.0xa22cb465 with:
                     gas gas_remaining wei
                    args address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xb863bd37(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not arg1:
                        revert with 0, 18
                    return (sha3(block.timestamp, block.difficulty, this.address) % arg1)
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
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                if owner != msg.sender:
                    if not stor3[msg.sender]:
                        revert with 0, 'no'
                if stor2[msg.sender]:
                    if eth.balance(this.address) < stor2[msg.sender]:
                        revert with 0, 'noo'
                    call msg.sender with:
                       value stor2[msg.sender] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'failed to send back avax'
                    stor2[msg.sender] = 0
            else:
                if unknown_0x41c0e1b5(?????) == uint32(call.func_hash) >> 224:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    selfdestruct(msg.sender)
                if uint32(call.func_hash) >> 224 != unknown_0x55486283(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        if not stor3[msg.sender]:
                            revert with 0, 'no'
                    if msg.value <= 0:
                        revert with 0, 'avax pls'
                    if sha3(block.timestamp, block.difficulty, this.address) % 101 > arg1:
                        require ext_code.size(stor1)
                        call stor1.0x3aaedfd5 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        staticcall stor1.0x288fe5ab with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor1)
                        call stor1.0xb69a922 with:
                             gas gas_remaining wei
                            args Array(len=1, data=ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address):
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send back avax'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function random(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 18
    return (sha3(block.timestamp, block.difficulty, this.address) % arg1)
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

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
    require ext_code.size(stor1)
    call stor1.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() payable {
    if owner != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'no'
    if stor2[msg.sender]:
        if eth.balance(this.address) < stor2[msg.sender]:
            revert with 0, 'noo'
        call msg.sender with:
           value stor2[msg.sender] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'failed to send back avax'
        stor2[msg.sender] = 0
}

function tryMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'no'
    if msg.value <= 0:
        revert with 0, 'avax pls'
    if sha3(block.timestamp, block.difficulty, this.address) % 101 > arg1:
        require ext_code.size(stor1)
        call stor1.0x3aaedfd5 with:
           value msg.value wei
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        staticcall stor1.0x288fe5ab with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xb69a922 with:
             gas gas_remaining wei
            args Array(len=1, data=ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'failed to send back avax'
}



}
