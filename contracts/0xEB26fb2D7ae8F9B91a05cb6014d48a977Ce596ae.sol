contract main {




// =====================  Runtime code  =====================


mapping of address contracts;
address stor1;

function contracts(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contracts[arg1]
}

function updateContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    contracts[msg.sender] = arg1
}

function changeManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor1 = arg1
}

function deploy() {
    require not contracts[msg.sender]
    create contract with 0 wei
                    code: code.data[1051 len 2106]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    contracts[msg.sender] = address(create.new_address)
}

function migrate(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require contracts[address(arg1)] == msg.sender
    require not contracts[address(arg2)]
    contracts[address(arg1)] = 0
    contracts[arg2] = contracts[address(arg1)]
}

function withdrawFee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x1068361f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require contracts[address(arg1)] == msg.sender
            require not contracts[address(arg2)]
            contracts[address(arg1)] = 0
            contracts[address(arg2)] = contracts[address(arg1)]
        else:
            if unknown_0x69dc9ff3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return contracts[arg1]
            if unknown_0x775c300c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require not contracts[msg.sender]
                create contract with 0 wei
                                code: code.data[1051 len 2106]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                contracts[msg.sender] = address(create.new_address)
            else:
                if unknown_0xa3fbbaae(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == stor1
                    stor1 = address(arg1)
                else:
                    if unknown_0xe3db17b8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        contracts[msg.sender] = address(arg1)
                    else:
                        require unknown_0xfd9be522(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require msg.sender == stor1
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
