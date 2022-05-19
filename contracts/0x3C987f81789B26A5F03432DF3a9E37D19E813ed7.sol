contract main {




// =====================  Runtime code  =====================


array of struct instanceAt;
mapping of uint256 stor1;

function instanceAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= instanceAt.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[3666 len 34], mem[198 len 30]
    return instanceAt[arg1].field_0
}

function isInstance(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function instanceCount() payable {
    return instanceAt.length
}

function _fallback() payable {
    revert
}

function create2(bytes arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 35, code.data[3736 len 35], mem[199 len 29]
}

function create(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 32
    create contract with 0 wei
                    code: code.data[1113 len 2553], address(cd[(arg1 + 36)])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1[address(create.new_address)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    code.data[3700 len 36],
                    code.data[1217 len 28]
    instanceAt.length++
    instanceAt[instanceAt.length].field_0 = address(create.new_address)
    instanceAt[instanceAt.length].field_160 = 0
    stor1[address(create.new_address)] = instanceAt.length
    emit InstanceAdded(address(create.new_address));
    return address(create.new_address)
}



}
