contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17424 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17424 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17386 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fc123602(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (224 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17424 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        mem[96 len 11070] = code.data[2289 len 11070]
        create contract with 0 wei
                        code: code.data[2289 len 11070]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        mem[96 len 4027] = code.data[13359 len 4027]
        mem[4123] = stor2
        mem[4155] = cd[((224 * idx) + cd[4] + 68)]
        mem[4187] = cd[((224 * idx) + cd[4] + 100)]
        mem[4219] = cd[((224 * idx) + cd[4] + 132)]
        mem[4251] = cd[((224 * idx) + cd[4] + 164)]
        mem[4283] = cd[((224 * idx) + cd[4] + 196)]
        mem[4315] = cd[((224 * idx) + cd[4] + 228)]
        create contract with 0 wei
                        code: code.data[13359 len 4027], stor2, cd[((224 * idx) + cd[4] + 68)], cd[((224 * idx) + cd[4] + 100)], cd[((224 * idx) + cd[4] + 132)], cd[((224 * idx) + cd[4] + 164)], cd[((224 * idx) + cd[4] + 196)], cd[((224 * idx) + cd[4] + 228)]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(create.new_address)
        mem[128] = address(create.new_address)
        emit deployedContracts(address(create.new_address), address(create.new_address));
        idx = idx + 1
        continue 
}

function sub_9dd8aad5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (224 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17424 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((224 * idx) + cd[4] + 36)] == address(cd[((224 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        mem[164] = cd[((224 * idx) + cd[4] + 100)]
        mem[196] = cd[((224 * idx) + cd[4] + 132)]
        require ext_code.size(stor3)
        call stor3.0x7c4e560b with:
             gas gas_remaining wei
            args address(cd[((224 * idx) + cd[4] + 36)]), cd[((224 * idx) + cd[4] + 68)], cd[((224 * idx) + cd[4] + 100)], cd[((224 * idx) + cd[4] + 132)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < ('cd', 4).length
        require cd[((224 * idx) + cd[4] + 228)] == bool(cd[((224 * idx) + cd[4] + 228)])
        require idx < ('cd', 4).length
        require cd[((224 * idx) + cd[4] + 36)] == address(cd[((224 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        if cd[((224 * idx) + cd[4] + 228)]:
            require cd[((224 * idx) + cd[4] + 196)] == bool(cd[((224 * idx) + cd[4] + 196)])
            require ext_code.size(stor3)
            call stor3.0xeede87c1 with:
                 gas gas_remaining wei
                args address(cd[((224 * idx) + cd[4] + 36)]), bool(cd[((224 * idx) + cd[4] + 196)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x4b4e675300000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((224 * idx) + cd[4] + 36)])
        mem[132] = cd[((224 * idx) + cd[4] + 164)]
        require ext_code.size(stor3)
        call stor3.0x4b4e6753 with:
             gas gas_remaining wei
            args address(cd[((224 * idx) + cd[4] + 36)]), cd[((224 * idx) + cd[4] + 164)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
